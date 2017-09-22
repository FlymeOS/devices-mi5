.class public Lcom/android/settings/privacypassword/FunctionSpecification;
.super Lmiui/app/Activity;
.source "FunctionSpecification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private amS:Landroid/widget/TextView;

.field private amT:Landroid/widget/Button;

.field private amU:Landroid/widget/ImageView;

.field private amV:Landroid/widget/ImageView;

.field private amW:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "privacy_password_function_specification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->to()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    .line 73
    if-eqz v0, :cond_1

    .line 74
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->intentAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->amQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/FunctionSpecification;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 31
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->tJ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->setRequestedOrientation(I)V

    .line 35
    :cond_0
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bW(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amW:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 38
    const v0, 0x7f130111

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amS:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f130112

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amT:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f13010f

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amU:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f130110

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/FunctionSpecification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amV:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "privacy_password_function_specification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->to()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    .line 47
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->amN:I

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amS:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->amO:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amU:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->amP:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-boolean v0, v0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->amR:Z

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->amW:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/FunctionSpecification;->finish()V

    .line 66
    :cond_0
    return-void
.end method
