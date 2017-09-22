.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Lcom/android/vendorsettings/dd;


# instance fields
.field final synthetic aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v0, v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c11d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 627
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->a(ZLjava/util/List;)V

    .line 628
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->l(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/vendorsettings/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    goto :goto_0
.end method

.method public onFailed()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 603
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 606
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->s(Landroid/content/Context;I)V

    .line 607
    iget-object v1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->j(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)I

    move-result v1

    if-ge v1, v4, :cond_2

    if-ge v0, v4, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v0, v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->fx:Landroid/widget/TextView;

    const v1, 0x7f0c0551

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 610
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->tA()V

    .line 611
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 612
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->b(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;I)I

    .line 617
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->k(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 618
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$9;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->l(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/vendorsettings/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    goto :goto_0
.end method
