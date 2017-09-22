.class public Lcom/android/vendorsettings/MiuiSettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettingsSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 19
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const-string v2, "intent_extra_data_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 27
    :goto_0
    if-le v0, v1, :cond_0

    .line 28
    invoke-static {v0}, Lcom/android/vendorsettings/dh;->I(I)I

    move-result v0

    .line 29
    invoke-static {}, Lcom/android/vendorsettings/dh;->ea()[I

    move-result-object v1

    .line 30
    invoke-static {v0}, Lcom/android/vendorsettings/dh;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v3, "airplane_mode_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/MiuiSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->finish()V

    .line 50
    return-void

    .line 24
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 34
    :cond_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    aget v0, v1, v0

    invoke-virtual {p0, v0, v2}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 39
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 40
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v2, 0x0

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 42
    const-class v1, Lcom/android/vendorsettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettingsSearchActivity;->setVisible(Z)V

    .line 56
    return-void
.end method
