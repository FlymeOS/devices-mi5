.class public Lcom/android/settings/fuelgauge/PowerModeSettings;
.super Landroid/app/Activity;
.source "PowerModeSettings.java"


# instance fields
.field private ZR:[Ljava/lang/CharSequence;

.field private ZS:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZS:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private qY()V
    .locals 4

    .prologue
    .line 36
    const v0, 0x7f0c0ea8

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    const-string v2, "show_high_performance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const v0, 0x7f0c0ea9

    .line 41
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    const-string v0, "persist.sys.aries.power_profile"

    const-string v2, "middle"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZR:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/fuelgauge/PowerModeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$1;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings/fuelgauge/PowerModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$2;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZS:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZS:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZS:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_1
    return v0

    .line 74
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZR:[Ljava/lang/CharSequence;

    .line 25
    sget-object v0, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->ZS:[Ljava/lang/CharSequence;

    .line 26
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->qY()V

    .line 27
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->setVisible(Z)V

    .line 33
    return-void
.end method
