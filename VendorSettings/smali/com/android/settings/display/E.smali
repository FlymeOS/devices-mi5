.class Lcom/android/settings/display/E;
.super Landroid/preference/CheckBoxPreference;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic Zq:Lcom/android/settings/display/PaperModeSetAppsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/display/E;->Zq:Lcom/android/settings/display/PaperModeSetAppsFragment;

    .line 131
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->b(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/E;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->b(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/E;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/E;->setKey(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/E;->setPersistent(Z)V

    .line 136
    invoke-virtual {p0, p4}, Lcom/android/settings/display/E;->setChecked(Z)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/display/E;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    return-void
.end method
