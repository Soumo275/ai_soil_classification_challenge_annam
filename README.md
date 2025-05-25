# annam_ai_soil-classification-challenge

## Challenge 1 Video link

https://drive.google.com/file/d/1GddHjq60PdUdSB0Z3jBdcLkSYZEzFQxA/view?usp=drive_link

## Challenge 2 video link

https://drive.google.com/file/d/1QP8PLlmO2UqDxrwkE1qnCGJ30Ji8hCJc/view?usp=sharing

# Challenge 1 (soil type classification)

## Project Steps

Here is a step-by-step description of the process implemented in the notebook:

1.  **Extract Dataset:** The compressed dataset (`soil-classification.zip`) is extracted into the `/content/soil-classification` directory.

2.  **Extract Features :** For each image listed in `train_labels.csv`, the image is loaded, resized, converted to RGB, and a color histogram is computed. These histograms serve as the features for the model.

3.  **Train Model:** The data is split into test and train and an Extra Trees Classifier is initialized and trained using the training features and labels.

4.  **Evaluate Model:** The trained model's performance is evaluated on the test set. Accuracy, a classification report (precision, recall, F1-score), and a confusion matrix are generated.

5.  **Predict on Test Data:** For each image listed in `test_ids.csv`, the image is loaded, features are extracted using the same color histogram method as in training, and the saved model is used to predict the soil type.

6.  **Save Test Predictions:** The predicted soil types for the test images are added as a new column (`soil_type`) to the DataFrame loaded from `test_ids.csv`, and the result is saved to `test_input_with_predictions.csv`.

## How to Run

1. Ensure you have the required libraries installed.
2. Place the `soil-classification.zip` file in the same directory as the notebook/script.
3. Run the Python notebook or script sequentially.

## Results

The accuracy of the Extra Trees Classifier on the validation set (split from the training data) is reported. The final predictions for the test dataset are saved in `test_input_with_predictions.csv`.

## Author

Soumyadip Mukherjee, Aaryaa Sastry

## Team Name

Soumo275

## Leaderboard Rank

47

# Challenge 2 ( soil detection)

## Project Steps

Here is a step-by-step description of the process implemented in the second notebook/script:

1. **Extract Dataset:** The dataset folder containing training images is placed at `/content/soil-classification/soil_competition-2025/train`.

2. **Feature Extraction:** Each image is resized to 224x224 pixels and passed through a pre-trained ResNet50 model (with `include_top=False` and `pooling='avg'`) to extract 2048-dimensional deep feature vectors.

3. **Scale Features:** All extracted features are standardized using `StandardScaler` to ensure consistent input scaling for the model.

4. **Train One-Class SVM:** A One-Class SVM model with RBF kernel is trained on the standardized features. The model assumes the training data consists only of “normal” instances.

5. **Save the Model:** The trained One-Class SVM and the `StandardScaler` object are serialized and saved using `joblib` as `soil_model.pkl`.

6. **Evaluate (Optional):** If ground truth labels are available, the model can be evaluated using precision, recall, F1-score, and confusion matrix to measure its ability to detect outliers.

### How to Run

1. Ensure the following libraries are installed: `tensorflow`, `numpy`, `scikit-learn`, `joblib`
2. Place your dataset in the correct folder structure as described in the script.
3. Run the training script to generate and save the anomaly detection model (`soil_model.pkl`).

## Results

The model was successfully trained on deep features extracted using ResNet50. It is capable of detecting anomalies in soil images with a f1 score of 0.915

## Team Name

Soumo275

### Leaderboard Rank

**38**
