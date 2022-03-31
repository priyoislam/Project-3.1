<?php
include('dbcon.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us</title>
  <link rel="stylesheet" href="../css/all.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/fontawesome.min.css">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/about.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="../css/animate.min.css">
</head>

<body>

  <?php include("navbar.php"); ?>


  <div class="about-section">
    <div class="inner-container">
      <h1>About</h1>
      <p class="text">
        CSWiki brings together computing educators, researchers, and professionals to inspire dialogue, share
        resources, and address the field's challenges. Research 101 strengthens the profession's collective voice through
        strong leadership, promotion of the highest standards, and recognition of technical excellence.It supports the
        professional growth of its members by providing opportunities for life‐long learning, career development, and
        professional networking.



      </p>

    </div>
  </div>
  <main>
    <div class="row faq1">
      <div class="col-md-6">
        <div class="card cardd1">
          <div class="card-body ">
            <h5 class="card-title cardclr">Why CSWiki?</h5>
            <p class="card-text cardclr1">Our site provides an organised set of ideas on research.Beginners may get help
              from it.A collection of curated and hosted full-text publications from select publishers will ease the path
              of research.Diffeent types of blogs,journels,papers are decorated alphabetically which may generate
              productivity.IT depends on the research but generally; because a scientist will first come up with a theory,
              then he and everyone else will do everything in their power to prove it wrong.

              If, after sometimes hundreds or thousands of tests, the theory stands true, it becomes widly accepted as
              reliable.
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card cardd2">
          <div class="card-body">
            <h5 class="card-title cardclr">Frequently Asked Questions</h5>
            <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    What is research study?
                  </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    A research study is a defined effort by doctors and scientists to investigate a research question.
                    This effort includes the functions of study design, implementation, measurement and reporting.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Who pays for research?
                  </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Most research is funded by taxpayer dollars through government grants, such as the National Institutes
                    of Health (cancer, diabetes, kidney disease, etc.), private companies, and nonprofit foundation
                    grants, such as the National Kidney Foundation and the Bill & Melinda Gates Foundation.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    What do I need to know before I decide to participate?
                  </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    there are a number of questions you might ask before deciding if a research study is right for you.

                    Why were you invited to join the research study?
                    What is the purpose of the research? What is the study trying to find out?
                    What are the risks and benefits of participating in the study?
                    What are the alternatives to being in the study?
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    How can I join a research registry?
                  </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Registries help link volunteers to specific studies by collecting information about the specific
                    disease or condition a volunteer is interested in along with their medical history, age, gender,
                    contact information, etc. Since this information is personal, you will want to know who is sponsoring
                    the registry and how your information is used and protected.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFive">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                    How do I know if the study is right for me?
                  </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    You may volunteer for any study appropriate to your condition. However, each research study has strict
                    eligibility requirements. The investigator (physician or other medical professional who runs the
                    study) will make sure you meet these requirements before accepting you in the study.
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

  </main>

  <?php include("footer.php"); ?>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>