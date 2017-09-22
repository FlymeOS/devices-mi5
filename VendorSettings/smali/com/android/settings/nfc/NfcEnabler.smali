.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final ahl:Landroid/preference/CheckBoxPreference;

.field private aid:Z

.field private final aih:Landroid/preference/PreferenceScreen;

.field private final aii:Landroid/preference/ListPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final um:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    .line 68
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    .line 72
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aid:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aid:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 86
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->cx(I)V

    return-void
.end method

.method private cx(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c02c8

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler;->aid:Z

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aid:Z

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c02c6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c02c7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aih:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->aii:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 118
    :goto_0
    return v2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->cx(I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
