.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private WH:Ljava/util/List;

.field private apS:Ljava/util/List;

.field private apT:Landroid/preference/PreferenceScreen;

.field private apU:I

.field private final apV:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private hN:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final xC:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->apS:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->hN:Ljava/util/List;

    .line 66
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    .line 67
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    .line 98
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->apV:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 214
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->xC:Landroid/telephony/PhoneStateListener;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->b(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->ua()V

    return-void
.end method

.method private b(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 302
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bJ()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->ub()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->uc()V

    .line 135
    return-void
.end method

.method private ua()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->hN:Ljava/util/List;

    move v0, v1

    .line 109
    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->apU:I

    if-ge v0, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 111
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->apS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :goto_1
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->apU:I

    if-ge v1, v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 121
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 122
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->apU:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 123
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->apS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    if-eqz v0, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->bJ()V

    .line 130
    return-void
.end method

.method private ub()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 139
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 141
    instance-of v3, v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 142
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method private uc()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->ue()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->uf()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->ud()V

    .line 151
    return-void
.end method

.method private ud()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 154
    const-string v1, "sim_sms"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 156
    const v3, 0x7f0c01b4

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 159
    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    return-void

    .line 161
    :cond_1
    if-nez v2, :cond_0

    .line 162
    const v2, 0x7f0c0a12

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ue()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 168
    const-string v1, "sim_cellular_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 170
    const v3, 0x7f0c01b2

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 173
    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    return-void

    .line 175
    :cond_1
    if-nez v2, :cond_0

    .line 176
    const v2, 0x7f0c0a12

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private uf()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 182
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 183
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 186
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 189
    const v5, 0x7f0c01b3

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 190
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0a11

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    return-void

    .line 190
    :cond_0
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->apU:I

    .line 92
    const-string v0, "sim_cards"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->apT:Landroid/preference/PreferenceScreen;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/sim/SimSettings;->apU:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->apS:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->WH:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sim/SimSelectNotification;->ci(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->apV:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 210
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 211
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->xC:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 212
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    instance-of v2, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v2, :cond_1

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v0, "slot_id"

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->a(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 253
    :cond_0
    :goto_0
    return v4

    .line 242
    :cond_1
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 243
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->apy:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_2
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_3

    .line 246
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->apy:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :cond_3
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 249
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->apy:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->apV:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 202
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->xC:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->ua()V

    .line 204
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x58

    return v0
.end method
