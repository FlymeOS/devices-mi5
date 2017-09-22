.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;
.super Landroid/os/CountDownTimer;
.source "PrivacyPasswordConfirmAccessControl.java"


# instance fields
.field final synthetic aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;JJ)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z

    .line 469
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I

    .line 471
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aom:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->h(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 473
    return-void
.end method

.method public onTick(J)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 459
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0, v4}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z

    .line 460
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c11c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 462
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 463
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->anS:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;->aoi:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const v3, 0x7f0c11c9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    return-void
.end method
