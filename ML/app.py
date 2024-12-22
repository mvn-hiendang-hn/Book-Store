from flask import Flask, render_template, request, jsonify
from models.ml_models import train_and_save_models, load_models
import pandas as pd
from sklearn.preprocessing import StandardScaler



import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, StandardScaler
from sklearn.naive_bayes import GaussianNB
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
import joblib
import os

# Đường dẫn lưu các mô hình và dữ liệu
MODEL_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_PATH = os.path.join(os.path.dirname(MODEL_DIR), 'data', 'books.xlsx')

def train_and_save_models():
    # Đọc dữ liệu từ file Excel
    df = pd.read_excel(DATA_PATH)

    # Mã hóa cột 'Genre'
    encoder = LabelEncoder()
    df['Genre'] = encoder.fit_transform(df['Genre'])

    # Tách feature và label
    X = df[['Price', 'Genre', 'Popularity']]
    y = df['Purchase History']

    # Chuẩn hóa dữ liệu
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(X)

    # Chia dữ liệu
    X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.2, random_state=42)

    # Huấn luyện các mô hình
    print("Training models...")

    # Naive Bayes
    nb_model = GaussianNB()
    nb_model.fit(X_train, y_train)
    joblib.dump(nb_model, os.path.join(MODEL_DIR, 'naive_bayes.pkl'))

    # KNN
    knn_model = KNeighborsClassifier(n_neighbors=3)
    knn_model.fit(X_train, y_train)
    joblib.dump(knn_model, os.path.join(MODEL_DIR, 'knn.pkl'))

    # Decision Tree
    dt_model = DecisionTreeClassifier(max_depth=4, random_state=42)
    dt_model.fit(X_train, y_train)
    joblib.dump(dt_model, os.path.join(MODEL_DIR, 'decision_tree.pkl'))

    print("Models trained and saved successfully.")

def load_models():
    # Load mô hình đã lưu
    nb_model = joblib.load(os.path.join(MODEL_DIR, 'naive_bayes.pkl'))
    knn_model = joblib.load(os.path.join(MODEL_DIR, 'knn.pkl'))
    dt_model = joblib.load(os.path.join(MODEL_DIR, 'decision_tree.pkl'))

    return nb_model, knn_model, dt_model


app = Flask(__name__)

# Huấn luyện và lưu mô hình (chạy 1 lần khi khởi động)
train_and_save_models()

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/predict', methods=['POST'])
def predict():
    # Load mô hình đã lưu
    nb_model, knn_model, dt_model = load_models()

    # Dữ liệu người dùng nhập vào
    user_data = request.json
    df = pd.DataFrame([user_data])

    # Tiền xử lý dữ liệu đầu vào
    scaler = StandardScaler()
    X_input = scaler.fit_transform(df)

    # Dự đoán
    predictions = {
        "Naive Bayes": int(nb_model.predict(X_input)[0]),
        "KNN": int(knn_model.predict(X_input)[0]),
        "Decision Tree": int(dt_model.predict(X_input)[0])
    }

    return jsonify(predictions)

if __name__ == '__main__':
    app.run(debug=True)
