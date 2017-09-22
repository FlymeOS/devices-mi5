.class public Lcom/android/vendorsettings/LockSecureAfterTimeout;
.super Lmiui/preference/PreferenceActivity;
.source "LockSecureAfterTimeout.java"


# instance fields
.field private final pG:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final pH:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 13
    new-instance v0, Lcom/android/vendorsettings/dP;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/dP;-><init>(Lcom/android/vendorsettings/LockSecureAfterTimeout;)V

    iput-object v0, p0, Lcom/android/vendorsettings/LockSecureAfterTimeout;->pG:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/LockSecureAfterTimeout;->pH:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/LockSecureAfterTimeout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/vendorsettings/LockSecureAfterTimeout;->pH:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_lock_screen_secure_after_timeout"

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 36
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 39
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 40
    new-instance v7, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v7, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 41
    aget-object v2, v3, v0

    invoke-virtual {v7, v2}, Lmiui/preference/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 42
    aget-object v2, v6, v0

    invoke-virtual {v7, v2}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v7, v1}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 44
    iget-object v2, p0, Lcom/android/vendorsettings/LockSecureAfterTimeout;->pG:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v2}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/LockSecureAfterTimeout;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 46
    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v7, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 47
    iget-object v2, p0, Lcom/android/vendorsettings/LockSecureAfterTimeout;->pH:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method
