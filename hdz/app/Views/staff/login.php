<!DOCTYPE html>
<html lang="en">

<head>

    <title>EDA</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Favicon icon -->
    <?php
    echo link_tag('assets/helpdeskz/images/favicon2.ico', 'icon', 'image/x-icon') .
        link_tag('assets/components/fontawesome/css/all.min.css') .
        link_tag('assets/components/bootstrap/css/bootstrap.min.css') .
        link_tag('assets/admin/styles/shards-dashboards.1.1.0.css');
    ?>
</head>

<body>
    <!-- [ auth-signin ] start -->
    <div class="container vh-100" style="display: flex; align-items: center; justify-content: center;">
        <div class="card w-100">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="card-body">
                        <!-- <img src="/assets/helpdeskz/images/logoalt.png" alt="" class="img-fluid mb-4"> -->
                        <h4 class="mb-3 f-w-400"><?php echo lang('Admin.login.title'); ?></h4>
                        <?php
                        if (isset($error_msg)) {
                            echo '<div class="alert alert-danger">' . $error_msg . '</div>';
                        }
                        echo form_open('', [], ['do' => 'login']);
                        ?>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="far fa-user"></i></span>
                            </div>
                            <input type="text" name="username" class="form-control" placeholder="<?php echo lang('Admin.form.username'); ?>">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control" placeholder="<?php echo lang('Admin.form.password'); ?>">
                        </div>

                        <div class="form-group text-left mt-2">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck1" name="remember" checked>
                                <label class="custom-control-label" for="customCheck1"><?php echo lang('Admin.login.rememberMe'); ?></label>
                            </div>
                        </div>
                        <button class="btn btn-primary mb-4"><?php echo lang('Admin.login.button'); ?></button>
                        <?php
                        echo form_close();
                        ?>
                    </div>
                </div>
                <div class="col-md-6 d-none d-md-block bg-primary d-flex justify-content-center align-items-center" style="height: 450px; border-top-right-radius: 0.625rem; border-bottom-right-radius: 0.625rem; background-image: radial-gradient(circle, #0057b8 20%, #002c59 90%);">
                    <div class="d-flex justify-content-center align-items-center" style="height: 100%;">
                        <img src="<?php echo base_url('assets/helpdeskz/images/logoalt.svg'); ?>" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ auth-signin ] end -->

    <!-- Required Js -->
    <?php
    echo script_tag('assets/admin/js/vendor-all.min.js') .
        script_tag('assets/admin/plugins/bootstrap/js/bootstrap.min.js');
    ?>
</body>

</html>