.class public Lcom/android/settings/ad/AdServiceSettings;
.super Lmiui/preference/PreferenceActivity;
.source "AdServiceSettings.java"


# instance fields
.field EP:Landroid/preference/CheckBoxPreference;

.field EQ:Landroid/preference/Preference;

.field private mActivity:Landroid/app/Activity;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ad/AdServiceSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ad/AdServiceSettings;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected jw()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ad/AdServiceSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    const v1, 0x7f0c0b8b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b8d

    new-instance v2, Lcom/android/settings/ad/d;

    invoke-direct {v2, p0}, Lcom/android/settings/ad/d;-><init>(Lcom/android/settings/ad/AdServiceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/ad/c;

    invoke-direct {v2, p0}, Lcom/android/settings/ad/c;-><init>(Lcom/android/settings/ad/AdServiceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Lcom/android/settings/ad/AdServiceSettings;->mActivity:Landroid/app/Activity;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/ad/AdServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/settings/ad/AdServiceSettings;->addPreferencesFromResource(I)V

    .line 32
    const-string v0, "personalized_ad_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/ad/AdServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EP:Landroid/preference/CheckBoxPreference;

    .line 33
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EP:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/ad/a;

    invoke-direct {v1, p0}, Lcom/android/settings/ad/a;-><init>(Lcom/android/settings/ad/AdServiceSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EP:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ad/AdServiceSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/MiuiSettings$Ad;->isPersonalizedAdEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 45
    const-string v0, "reset_aaid"

    invoke-virtual {p0, v0}, Lcom/android/settings/ad/AdServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EQ:Landroid/preference/Preference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EQ:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings;->EQ:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/ad/b;

    invoke-direct {v1, p0}, Lcom/android/settings/ad/b;-><init>(Lcom/android/settings/ad/AdServiceSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    return-void
.end method
