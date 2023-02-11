
class FruitData{
  final String name,ImageUrl,desc;

  FruitData(this.name, this.ImageUrl, this.desc);
}



 List<FruitData> fruitData = [FruitData('Apple', 'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
 'Apples are an incredibly nutritious fruit that offers multiple health benefits.They are rich in fiber and antioxidants. Eating them is linked to a lower risk of many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health.',),
                              FruitData('Mango', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
 'It also plays an important role in helping strengthen your bones. Mangos are also rich in vitamin C, which is important for forming blood vessels and healthy collagen, as well as helping you heal. Mangos are rich in beta-carotene, a pigment responsible for the yellow-orange color of the fruit',),
                              FruitData('Orange','https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
 'Helps your body make collagen, a protein that heals wounds and gives you smoother skin. Makes it easier to absorb iron to fight anemia. Boosts your immune system, your body defense against germs. Slows the advance of age-related macular degeneration (AMD), a leading cause of vision loss.',),
                              FruitData( 'Pineapple','https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg',
'Bromelain, the digestive enzyme in pineapple, has anti-inflammatory and pain-relieving properties. This helps when you have an infection, like sinusitis, or an injury, like a sprain or burn. It also offsets the joint pain of osteoarthritis. The vitamin C in pineapple juice also keeps inflammation levels low',),
                              FruitData('Avacado','https://images.unsplash.com/photo-1523049673857-eb18f1d7b578?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJ1aXQlMjBpbiUyMGpwZWclMjBmb3JtYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
'Avocados are a source of vitamins C, E, K, and B6, as well as riboflavin, niacin, folate, pantothenic acid, magnesium, and potassium. They also provide lutein, beta carotene, and omega-3 fatty acids. Avocados contain high levels of healthy, beneficial fats, which can help a person feel fuller between meals.',),
                              FruitData( 'Banana',   'https://images.unsplash.com/photo-1528825871115-3581a5387919?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1915&q=80',
 'Bananas have been grown as crops for thousands of years. Parts of the banana are used for low levels of potassium in the blood (hypokalemia), constipation, and diarrhea. They are also used for diabetes, high cholesterol, and many other conditions, but there is no good scientific evidence to support most of these uses.',),
                              FruitData( 'Cherry',   'https://images.unsplash.com/photo-1528821128474-27f963b062bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
'Many studies show that cherries help inhibit oxidative stress and decrease inflammation by suppressing inflammatory proteins, which can help reduce symptoms related to arthritis. Plus, they can decrease uric acid levels in your body, making them especially beneficial for those with gout',),
                              FruitData( 'Blueberry',   'https://images.unsplash.com/photo-1457296898342-cdd24585d095?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
'Blueberries can help heart health, bone strength, skin health, blood pressure, diabetes management, cancer prevention, and mental health. One cup of blueberries provides 24 percent of a person recommended daily allowance of vitamin C.',),
                              FruitData( 'Kiwi',   'https://images.unsplash.com/photo-1618897996318-5a901fa6ca71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
'Kiwis are high in Vitamin C and dietary fiber and provide a variety of health benefits. This tart fruit can support heart health, digestive health, and immunity. The kiwi is a healthy choice of fruit and is rich with vitamins and antioxidants.',),
                              FruitData( 'Pear','https://images.unsplash.com/photo-1615484477778-ca3b77940c25?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
'In addition to being a good source of fiber, pears are also high in vitamins C and K, as well as potassium and antioxidants. They are also especially good for gut health, and they may help keep you regular, too.',),
                              FruitData( 'Green Apple','https://images.unsplash.com/photo-1577028300036-aa112c18d109?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
'Green apples are rich in Vitamin C, Vitamin A, antioxidants, and phytonutrients, which make them a great food for improved vision. These micronutrients fight damages and infections in the eye, help the wounds heal faster, and protect the lens as well as the outer layer of the eyes.',),
                              FruitData('Water Melon','https://images.unsplash.com/photo-1589984662646-e7b2e4962f18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
'Watermelon is rich in an amino acid called citrulline that may help move blood through your body and can lower your blood pressure. Your heart also enjoys the perks of all the lycopene watermelon contains. Studies show that it may lower your risk of heart attacks.',),
                              FruitData('Pomogranate','https://images.unsplash.com/photo-1574709755254-fcd942d09d5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
'They are rich in fiber, vitamins, and minerals and even contain some protein. They are also full of antioxidants and anti-inflammatory compounds such as punicalagins. These have been studied for their protective benefits for heart, urinary, brain, digestive, and prostate health.',),
                              FruitData( 'grapes','https://images.unsplash.com/photo-1596363505729-4190a9506133?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
'Grapes are a good source of potassium, a mineral that helps balance fluids in your body. Potassium can help bring down high blood pressure and lower your risk of heart disease and stroke. Most people do not get enough of this nutrient, so eating grapes can help fill the gap.',),
 ];
