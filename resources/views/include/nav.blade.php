<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="#">PUC</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    Department
                    </a>
                    <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Create</a>
                    <a class="dropdown-item" href="#">All</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    Course
                    </a>
                    <div class="dropdown-menu">
                    <a class="dropdown-item" href="{{ url("course/create") }}">Create</a>
                    <a class="dropdown-item" href="#">All</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    Student
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="{{ url("student/create") }}">Create</a>
                        <a class="dropdown-item" href="{{ url("student/batches") }}">All Batches</a>
                    </div>
                </li>

                <!-- Dropdown -->
                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Dropdown link
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                    </div>
                </li> -->
            </ul>
        </div>
    </nav>