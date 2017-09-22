.class Lcom/android/vendorsettings/applications/ManageDefaultApps$3;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    check-cast p2, Ljava/lang/CharSequence;

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->e(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->d(Lcom/android/vendorsettings/applications/ManageDefaultApps;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->f(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Lcom/android/vendorsettings/applications/DefaultBrowserPreference;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->f(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Lcom/android/vendorsettings/applications/DefaultBrowserPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/DefaultBrowserPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageDefaultApps$3;->Kw:Lcom/android/vendorsettings/applications/ManageDefaultApps;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/ManageDefaultApps;->f(Lcom/android/vendorsettings/applications/ManageDefaultApps;)Lcom/android/vendorsettings/applications/DefaultBrowserPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/vendorsettings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
