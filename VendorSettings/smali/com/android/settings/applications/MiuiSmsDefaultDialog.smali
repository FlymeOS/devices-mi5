.class public final Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;
.super Landroid/app/Activity;
.source "MiuiSmsDefaultDialog.java"


# instance fields
.field private Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field private Kx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private V(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 124
    iget-object v2, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->showDialog(I)V

    .line 130
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 134
    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Kx:I

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Kx:I

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->setResult(I)V

    .line 40
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->finish()V

    .line 43
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const v1, 0x7f0c0d84

    const v5, 0x7f0c0d82

    .line 54
    const/4 v0, 0x0

    .line 55
    iput p1, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Kx:I

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d81

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->Ar:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$2;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f39

    new-instance v2, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$1;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$3;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$3;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d83

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$5;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$5;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$6;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$6;-><init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->setVisible(Z)V

    .line 49
    return-void
.end method
