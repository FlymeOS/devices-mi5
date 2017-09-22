.class public Lcom/android/vendorsettings/display/ForceTouchGuideActivity;
.super Lmiui/preference/PreferenceActivity;
.source "ForceTouchGuideActivity.java"


# instance fields
.field private Yo:Landroid/preference/CheckBoxPreference;

.field private Yp:Lmiui/preference/ValuePreference;

.field Yq:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mu:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    .line 71
    new-instance v0, Lcom/android/vendorsettings/display/o;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/display/o;-><init>(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yq:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private L(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 86
    if-nez v1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    return p1
.end method

.method private aK(Z)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yp:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 103
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yp:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->aK(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yo:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private pw()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mContext:Landroid/content/Context;

    .line 52
    const-string v0, "force_touch_demo"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yp:Lmiui/preference/ValuePreference;

    .line 53
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$ForceTouch;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    .line 54
    const-string v0, "force_touch_enable"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yo:Landroid/preference/CheckBoxPreference;

    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yq:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->Yo:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    const v0, 0x7f130106

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    .line 59
    new-instance v0, Lcom/android/vendorsettings/display/n;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/display/n;-><init>(Lcom/android/vendorsettings/display/ForceTouchGuideActivity;)V

    .line 65
    iget-object v1, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    const-string v1, "force_touch"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mu:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 69
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->addPreferencesFromResource(I)V

    .line 35
    invoke-direct {p0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->pw()V

    .line 36
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->aK(Z)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 41
    iget-boolean v0, p0, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/display/ForceTouchGuideActivity;->aK(Z)V

    .line 42
    return-void
.end method
