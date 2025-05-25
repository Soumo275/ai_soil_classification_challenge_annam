# annam_ai_soil-classification-challenge

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
