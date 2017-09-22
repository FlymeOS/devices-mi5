.class public abstract Lcom/android/vendorsettings/applications/AppInfoWithHeader;
.super Lcom/android/vendorsettings/applications/AppInfoBase;
.source "AppInfoWithHeader.java"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v3, :cond_0

    const-string v5, "hideInfoButton"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    .line 54
    :cond_0
    if-eqz v4, :cond_2

    const-string v3, "hideInfoButton"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v2, "package"

    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->mCreated:Z

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->mCreated:Z

    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->a(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vendorsettings/A;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    goto :goto_0
.end method
