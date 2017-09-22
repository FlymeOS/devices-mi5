.class public Lcom/android/settings/fingerprint/a;
.super Landroid/app/Activity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected abp:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bZ(I)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/a;->k(IZ)V

    .line 123
    return-void
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f130076

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0x7ffeff00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->qh()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/NavigationBar;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected k(IZ)V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f1302d5

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/a;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 112
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 113
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->pm()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->m(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->qi()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/a;->setTheme(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/a;->abp:[B

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/a;->abp:[B

    if-nez v0, :cond_0

    .line 66
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/a;->abp:[B

    .line 69
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/a;->initViews()V

    .line 81
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/a;->abp:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 75
    return-void
.end method

.method protected pm()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f1300f6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected qh()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f1302cd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    return-object v0
.end method

.method protected qi()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected qj()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/a;->abp:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 143
    return-object v0
.end method
