# impact
LICENSE: https://github.com/burliEnterprises/tensorflow-image-classifier  
  
https://towardsdatascience.com/deep-learning-with-tensorflow-part-4-face-classification-and-video-inputs-fa078f22c1e5  
  
http://www.talkapps.org/bulk-image-downloader  

https://js.tensorflow.org/  
    
https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/#0  
  
https://ai.googleblog.com/2017/06/mobilenets-open-source-models-for.html   
  
  
# make it work

## actually the images are downloaded alreay, so you do not need this part
Download the `builk-image-downloader`. Then google and search for `bill gates`, `steve jobs`, `markzuckerberg` in the images tab, choose the `tools` => `type` => `face`, at this point click the `bulk image downloader`, select `current tab`, then it is will select all, so first click `invert selection`, then select minimum 20 pages, that is only the given person and it will be in the `Downloads` folder and it will be like `image.jpg`, `image(1).jpg`, select these and save to `tensorflow-images-classifier/training_dataset/name-of-person`.  
  
So you should have all 3 people at least each 20 pictures. Now let's train.   

## train

https://www.tensorflow.org/hub/tutorials/image_retraining  
  
```bash
sudo apt install python3-setuptools python3-pip
pip3 install tensorflow tensorflow_hub

curl -LJO https://raw.githubusercontent.com/googlecodelabs/tensorflow-for-poets-2/master/scripts/retrain.py
./train.sh

./classify.py validate-images/gates1.jpg
./classify.py validate-images/gates2.jpg
./classify.py validate-images/gates3.jpg
./classify.py validate-images/gates4.jpg
./classify.py validate-images/gates5.jpg
./classify.py validate-images/gates6.jpg
./classify.py validate-images/gates7.jpg
./classify.py validate-images/gates8.jpg

./classify.py validate-images/zuker1.jpg
./classify.py validate-images/zuker2.jpg
./classify.py validate-images/zuker3.jpg
./classify.py validate-images/zuker4.jpg
./classify.py validate-images/zuker5.jpg
./classify.py validate-images/zuker6.jpg
./classify.py validate-images/zuker7.jpg
./classify.py validate-images/zuker8.jpg

```