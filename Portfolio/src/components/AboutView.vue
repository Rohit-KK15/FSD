<template>
    <v-app id="about">
        <div class="about">
            <div class="about-me">
                <div class="about-head"><h2 class="head">About <span>Me</span></h2></div>
                <div class="about-img">
                    <img src="../assets/candid.jpg" alt="">
                    <span class="circle-spin"></span>
                </div>
                <img src="https://readme-typing-svg.demolab.com?font=Poppins&weight=700&size=35&duration=3000&pause=2000&color=4C55F7&center=true&vCenter=true&width=435&lines=Mobile+Developer;Web+Developer" alt="Typing SVG" />
                <div class="about-content">
                    <p>I am an 18-year-old self-taught developer from India. Proficient in building websites and mobile apps with a knack for problem-solving. Always eager to acquire new skills and stay ahead. Beyond coding, I find joy in music, games, cricket, and indulging in captivating movies and series. A tech enthusiast on an exciting journey of continuous growth and creativity.</p>
                </div>
            </div>
            <div class="education">
                <div class="education-row">
                    <div class="education-column">
                        <div class="education-box">
                            <div class="education-content">
                                <div class="content">
                                    <div class="year">
                                        <i class='bx bxs-calendar' style="font-family: 'Poppins';"></i>2019 - 2022
                                    </div>
                                    <h3>Diploma - Govt. Polytechnic, AKP</h3>
                                    <p> I have earned a Diploma in Computer Engineering from Government Polytechnic, Anakapalli.</p>
                                </div>
                            </div>
                            <div class="education-content">
                                <div class="content">
                                    <div class="year">
                                        <i class='bx bxs-calendar'></i>2022 - 2025
                                    </div>
                                    <h3>B.tech - Andhra University</h3>
                                    <p> Currently, I am pursuing B.tech in Computer Science Engineering at Andhra University.</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </v-app>
</template>

<script>
</script>

<style scoped>

#about {
  background: transparent;
  display: flex;
  font-family: 'Poppins';
  gap: 2rem;
  /* justify-content: center; */
  /* align-items: center; */
}

.about{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;

}

.about-me{
    display: flex;
    margin-top: 100px;
    align-items: center;
    /* justify-content: flex-end; */
    height: 80%;
    width: 70%;
    flex-direction: column;
    gap: 2rem;
    margin: 5% 14%;
    /* margin: 100px 13%; */
}



.head{
    font-size: xxx-large;
    font-family: 'Poppins';
    color: #fff;
}

.head span{
    color: #4c55f7;
}

.about-img{
    position: relative;
    width: 13rem;
    height: 13rem;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;

}

.about-img img{
    width: 90%;
    border-radius: 50%;
    border: .2rem solid #4c55f7;
}

.about-img .circle-spin{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) rotate(0);
    height: 100%;
    width: 100%;
    border-radius: 50%;
    border-top: .2rem solid transparent;
    border-right: .2rem solid #4c55f7;
    border-bottom: .2rem solid transparent;
    border-left: .2rem solid #4c55f7;
    animation: aboutSpinner 8s linear infinite;
}

.about-me .about-content{
    border: 2px solid #343434;
    border-radius: 8px;
    padding: 20px;
    /* text-align: center; */
}

.about-content p{
    color: #fff;
    font-family: 'Poppins';
    font-size: clamp(100%, 1.4rem, 3vw);
    /* font-size: 1.4rem; */
    /* margin: 1rem 1rem 3rem; */
}

.education{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    min-height: auto;
    padding-bottom: 5rem;
    margin: 0 10% 0 10%;
}

.education .education-row{
    display: flex;
    flex-wrap: wrap;
    gap: 5rem;
}

.education-row .education-column{
    flex: 1 1 40rem;
}

.education-column .education-box{
    border-left: .2rem solid #4c55f7;
}

.education-box .education-content{
    position: relative;
    padding-left: 2rem;
}

.education-box .education-content::before{
    content: '';
    position: absolute;
    top: 0;
    left: -0.6rem;
    width: 1rem;
    height: 1rem;
    background: #4c55f7;
    border-radius: 50%;
}

.education-content .content{
    position: relative;
    padding: 1rem;
    border: .2rem solid #4c55f7;
    border-radius: .6rem;
    margin-bottom: 2rem;
    overflow: hidden;
    z-index: 0;
}

.education-content .content::before{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: #4c55f781;
    z-index: -1;
    transition: .5s;
}

.education-content .content:hover::before{
    width: 100%;
}

.education-content .content .year{
    font-size: 1.2rem;
    color: #4c55f7;
    padding-bottom: .5rem;
}

.education-content .content .year i{
    padding-right: .5rem;
    font-family: 'Poppins';
}

.education-content .content h3{
    color: #ffffffc3;
    font-size: 1.3rem;
}

.education-content .content p{
    color: #ffffff9a;
    font-size: .8rem;
    padding-top: .5rem;
}

@keyframes aboutSpinner {
    100%{
        transform: translate(-50%, -50%) rotate(360deg);
    }
}

</style>