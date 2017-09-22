.class Lcom/android/vendorsettings/at;
.super Ljava/lang/Object;
.source "ChildrenModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dl:Lcom/android/vendorsettings/ChildrenModeSettings;

.field final synthetic dp:Landroid/content/pm/ApplicationInfo;

.field final synthetic dq:Z


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ChildrenModeSettings;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/at;->dp:Landroid/content/pm/ApplicationInfo;

    iput-boolean p3, p0, Lcom/android/vendorsettings/at;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->a(Lcom/android/vendorsettings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 247
    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 250
    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/at;->dp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/ChildrenModeSettings;->a(Lcom/android/vendorsettings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    invoke-static {v0, v2, v3, v4, v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 259
    iget-boolean v0, p0, Lcom/android/vendorsettings/at;->dq:Z

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/at;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/ChildrenModeSettings;->d(Lcom/android/vendorsettings/ChildrenModeSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
