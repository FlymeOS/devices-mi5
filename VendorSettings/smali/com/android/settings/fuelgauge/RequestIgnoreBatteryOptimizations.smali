.class public Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestIgnoreBatteryOptimizations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field afG:Landroid/os/IDeviceIdleController;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 103
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 106
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->afG:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->setResult(I)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "RequestIgnoreBatteryOptimizations"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->afG:Landroid/os/IDeviceIdleController;

    .line 51
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const-string v0, "RequestIgnoreBatteryOptimizations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    .line 99
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 60
    const-string v0, "RequestIgnoreBatteryOptimizations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "RequestIgnoreBatteryOptimizations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not should prompt, already ignoring optimizations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    iget-object v3, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const-string v0, "RequestIgnoreBatteryOptimizations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not hold permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v0, "RequestIgnoreBatteryOptimizations"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested package doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    goto/16 :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    const v2, 0x7f0c0b3c

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    const v2, 0x7f0c0b3d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 94
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/RequestIgnoreBatteryOptimizations;->setupAlert()V

    goto/16 :goto_0
.end method
