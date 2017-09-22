.class public Lcom/android/settings/nfc/NfcSeRoute;
.super Ljava/lang/Object;
.source "NfcSeRoute.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ais:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private um:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/preference/ListPreference;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->rV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings/nfc/NfcSeRoute;->um:Landroid/nfc/NfcAdapter;

    .line 44
    iput-object p3, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    .line 45
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0faf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pd()V

    goto :goto_0
.end method

.method private cz(I)V
    .locals 5

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setSeRouting"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->um:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 161
    :goto_1
    const-string v0, "NfcSeRoute"

    const-string v1, "Failed to invoke NfcSeRoute.setSeRouting()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    goto :goto_1

    .line 154
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private pd()V
    .locals 7

    .prologue
    const v6, 0x7f0c0fb3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0fb0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0fb1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->rU()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->rW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 98
    return-void

    .line 78
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    const v1, 0x7f0c0fb2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private rU()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    new-instance v2, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSeRoute;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method private rV()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    const-string v1, "support_se_route"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    const-string v1, "NfcSeRoute"

    const-string v2, "NfcSeRoute is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rW()I
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSeRouting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSeRoute;->um:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 143
    :cond_0
    :goto_1
    const-string v0, "NfcSeRoute"

    const-string v1, "Failed to invoke NfcSeRoute.getSeRouting()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1

    .line 134
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->rV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSeRoute;->ais:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 106
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 110
    :cond_0
    const-string v2, "NfcSeRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set wallet as :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcSeRoute;->cz(I)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pd()V

    .line 116
    :cond_1
    return v1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->rV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pd()V

    .line 56
    :cond_0
    return-void
.end method
