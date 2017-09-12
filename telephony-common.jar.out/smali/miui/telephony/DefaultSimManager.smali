.class public Lmiui/telephony/DefaultSimManager;
.super Ljava/lang/Object;
.source "DefaultSimManager.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.implements Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_IMSI_READY:I = 0x4

.field private static final EVENT_INIT_DEFAULT_SLOT:I = 0x0

.field private static final EVENT_SYNC_DEFAULT_DATA_SLOT:I = 0x1

.field private static final EVENT_SYNC_DEFAULT_VOICE_SLOT:I = 0x2

.field public static final IS_CUSTOMIZED_FOR_CM:Z

.field public static final KEY_IS_USE_PREFRRED:Ljava/lang/String; = "key_is_use_preferred"

.field public static final KEY_PREFERRED_DATA_SLOT:Ljava/lang/String; = "key_preferred_data_slot"

.field private static final LAST_ICC_ID_PROPERTY:Ljava/lang/String; = "persist.radio.iccid"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final WAITING_SIM_TIME:I = 0xfa0

.field private static sInstance:Lmiui/telephony/DefaultSimManager;


# instance fields
.field private m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

.field private mHandler:Landroid/os/Handler;

.field private mInitModes:Ljava/lang/String;

.field private mIsUsePreferred:Z

.field private mLastSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldDefaultDataSlotId:I

.field private mOldDefaultDataSubId:I

.field private mPreferredDataSlot:I

.field private mPropertyDefautlDataSlotId:I

.field private mPropertyDefautlVoiceSlotId:I

.field private final mSc:Lcom/android/internal/telephony/SubscriptionController;

.field private mSimApplicationNum:[I

.field private mSimInsertStates:[I

.field private final mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "DefaultSimManager"

    sput-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string v0, "cm"

    invoke-static {}, Lmiui/util/Network;->getOperatorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/DefaultSimManager;->IS_CUSTOMIZED_FOR_CM:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v3, "persist.radio.default.data"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 54
    const-string v3, "persist.radio.default.voice"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 84
    new-instance v3, Lmiui/telephony/DefaultSimManager$1;

    invoke-direct {v3, p0}, Lmiui/telephony/DefaultSimManager$1;-><init>(Lmiui/telephony/DefaultSimManager;)V

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    .line 134
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 135
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v3, v1

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 136
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [I

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    .line 137
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 138
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v4, v3, v0

    .line 141
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    aput v7, v3, v0

    .line 142
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v6, v3, v0

    .line 143
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v6, v3, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 147
    new-instance v3, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/DefaultSimManager;Lmiui/telephony/DefaultSimManager$1;)V

    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 149
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 150
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 152
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/DefaultSimManager;->mInitModes:Ljava/lang/String;

    .line 153
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->init()V

    .line 154
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/telephony/VirtualSimUtils;->addVirtualSimChangedListener(Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;)V

    .line 155
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 156
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "key_is_use_preferred"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/telephony/DefaultSimManager;->mIsUsePreferred:Z

    .line 157
    const-string v3, "key_preferred_data_slot"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/telephony/DefaultSimManager;->mPreferredDataSlot:I

    .line 158
    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/telephony/DefaultSimManager;)[I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    return-object v0
.end method

.method static synthetic access$400(Lmiui/telephony/DefaultSimManager;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmiui/telephony/DefaultSimManager;->updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/telephony/DefaultSimManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/telephony/DefaultSimManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lmiui/telephony/DefaultSimManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/DefaultSimManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/telephony/DefaultSimManager;->onDefaultVoiceSubscriptionChanged()V

    return-void
.end method

.method private broadcastDataSlotChanged(I)V
    .locals 4
    .param p1, "newSlotId"    # I

    .prologue
    .line 517
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDataSlotChanged old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "old_data_slot"

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 521
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    return-void
.end method

.method private broadcastDataSlotReady(I[I)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 295
    if-nez p2, :cond_0

    const-string v1, "null"

    .line 296
    .local v1, "states":Ljava/lang/String;
    :goto_0
    sget-object v2, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastDataSlotReady dataSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim state =["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 299
    const-string v2, "sim_insert_state_array"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 300
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    return-void

    .line 295
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "states":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lmiui/telephony/DefaultSimManager;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDataSlotForVirtualSim(ILjava/util/List;)I
    .locals 9
    .param p1, "ds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v8, 0x0

    .line 680
    move v1, p1

    .line 681
    .local v1, "ret":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 682
    sget-object v5, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 683
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v5, "key_is_use_preferred"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 684
    .local v3, "usePreferred":Z
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 685
    .local v0, "preferredSlot":I
    if-eqz v3, :cond_0

    .line 686
    const-string v5, "key_preferred_data_slot"

    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 688
    :cond_0
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/VirtualSimUtils;->getVirtualSimSlotId()I

    move-result v4

    .line 689
    .local v4, "virtualSlot":I
    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v5, :cond_3

    .line 692
    move v1, v0

    .line 696
    :cond_1
    :goto_0
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataSlotForVirtualSim ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " usePreferred="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preferredSlot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " virtualSLotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "preferredSlot":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "usePreferred":Z
    .end local v4    # "virtualSlot":I
    :cond_2
    :goto_1
    return v1

    .line 693
    .restart local v0    # "preferredSlot":I
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "usePreferred":Z
    .restart local v4    # "virtualSlot":I
    :cond_3
    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v4, v5, :cond_1

    .line 694
    move v1, v4

    goto :goto_0

    .line 698
    .end local v0    # "preferredSlot":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "usePreferred":Z
    .end local v4    # "virtualSlot":I
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 699
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 700
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    sget-object v6, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 702
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getDataSlotForVirtualSim restore for only virtual sim inserted"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v6, "key_is_use_preferred"

    const-string v7, "key_preferred_data_slot"

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-static {v6, v8, v7, v5}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 706
    :cond_5
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getDataSlotForVirtualSim waiting for virtual sim ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 709
    :cond_6
    sget-object v5, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getDataSlotForVirtualSim restore for virtual sim disabled"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v5, "key_is_use_preferred"

    const-string v6, "key_preferred_data_slot"

    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v5, v8, v6, v7}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1
.end method

.method public static getDefaultDataSlotId()I
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v1, :cond_0

    .line 218
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    goto :goto_0
.end method

.method public static getDefaultVoiceSlotId()I
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    iget v0, v0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 227
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.default.voice"

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lmiui/telephony/DefaultSimManager;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    return-object v0
.end method

.method static init()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lmiui/telephony/DefaultSimManager;

    invoke-direct {v0}, Lmiui/telephony/DefaultSimManager;-><init>()V

    sput-object v0, Lmiui/telephony/DefaultSimManager;->sInstance:Lmiui/telephony/DefaultSimManager;

    .line 162
    return-void
.end method

.method private initDefaultDataSlotId(I[I)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 279
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDefaultDataSlotId is trying to set default data slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 281
    const-string v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 283
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 284
    .local v0, "subId":I
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    if-eq v1, v0, :cond_0

    .line 285
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 292
    :goto_0
    return-void

    .line 286
    :cond_0
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 288
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotReady(I[I)V

    goto :goto_0
.end method

.method private isAllInfoReady(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 330
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isApplicationReady(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged return for no sim application"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_2
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isAllSubscriptionInfoCreated(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged return for some SubscriptionInfo is not created"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->isMccMncReadyForCmcc(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 342
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged return for mcc is not ready"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAllSubscriptionInfoCreated(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 351
    .local v0, "cardCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 352
    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    .line 353
    add-int/lit8 v0, v0, 0x1

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isApplicationReady(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x1

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 361
    .local v1, "si":Lmiui/telephony/SubscriptionInfo;
    iget-object v3, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    aget v3, v3, v4

    if-ge v3, v2, :cond_0

    .line 362
    const/4 v2, 0x0

    .line 365
    .end local v1    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method

.method public static isDcOnlyVirtualSim(I)Z
    .locals 2
    .param p0, "voiceSlot"    # I

    .prologue
    const/4 v0, 0x1

    .line 628
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMccMncReadyForCmcc(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    .line 604
    sget-boolean v4, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v4, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v3

    .line 608
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 612
    .local v2, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v4

    if-nez v4, :cond_2

    .line 615
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-virtual {p0, v4}, Lmiui/telephony/DefaultSimManager;->getSimImsi(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    :cond_3
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-virtual {p0, v4}, Lmiui/telephony/DefaultSimManager;->getRuimImsi(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    :cond_4
    sget-object v3, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isMccMncReadyForCmcc both cdma and gsm imsi is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSameWithBefore(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newSubInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .line 369
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    if-nez v5, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v4

    .line 372
    :cond_1
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 373
    .local v2, "oldSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 376
    iget-object v5, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 377
    .local v3, "oldSub":Lmiui/telephony/SubscriptionInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 378
    .local v1, "newSub":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v1    # "newSub":Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "oldSub":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private needListenImsiReady()Z
    .locals 1

    .prologue
    .line 637
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/telephony/DefaultSimManager;->IS_CUSTOMIZED_FOR_CM:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDefaultVoiceSubscriptionChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 502
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDefaultVoiceSubscriptionChanged inconsistent and wait for init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    .line 507
    .local v0, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ne v1, v2, :cond_1

    .line 508
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->syncVoiceSubscription(Ljava/util/List;)V

    goto :goto_0

    .line 510
    :cond_1
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDefaultVoiceSubscriptionChanged delay"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private simInsertStatesToString([I)Ljava/lang/String;
    .locals 3
    .param p1, "simInsertStates"    # [I

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 576
    if-eqz v1, :cond_0

    .line 577
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    .line 575
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :pswitch_0
    const-string v2, "NO_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 585
    :pswitch_1
    const-string v2, "NEW_CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 588
    :pswitch_2
    const-string v2, "REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 591
    :pswitch_3
    const-string v2, "CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 594
    :pswitch_4
    const-string v2, "NO CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 600
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static storeValues(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "value1"    # Z
    .param p2, "key2"    # Ljava/lang/String;
    .param p3, "value2"    # I

    .prologue
    .line 734
    sget-object v2, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 735
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p0, :cond_0

    .line 737
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 739
    :cond_0
    if-eqz p2, :cond_1

    .line 740
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 742
    :cond_1
    sget-object v2, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeValues "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 744
    return-void
.end method

.method private syncDataSubscription(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 318
    .local v1, "modemDataSubId":I
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 319
    .local v3, "userDataSlotId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 320
    .local v2, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 321
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncDataSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 327
    .end local v2    # "si":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncDataSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncVoiceSubscription(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    .line 305
    .local v1, "modemVoiceSubId":I
    iget v3, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 306
    .local v3, "userVoiceSlotId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 307
    .local v2, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 308
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncVoiceSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 314
    .end local v2    # "si":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return-void

    .line 313
    :cond_1
    sget-object v4, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncVoiceSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCard(Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 8
    .param p1, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "slot"    # I

    .prologue
    const/4 v5, 0x0

    .line 641
    if-nez p1, :cond_2

    .line 642
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v7, v6, p2

    .line 643
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    const/4 v7, 0x0

    aput v7, v6, p2

    .line 648
    :goto_0
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 650
    .local v1, "appTypes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_6

    .line 651
    aget v6, v1, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 652
    .local v4, "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_2
    if-nez p1, :cond_4

    move-object v0, v5

    .line 653
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_3
    if-nez v0, :cond_5

    move-object v3, v5

    .line 654
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_4
    aget-object v6, v4, p2

    if-eq v3, v6, :cond_1

    invoke-direct {p0}, Lmiui/telephony/DefaultSimManager;->needListenImsiReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    aget-object v6, v4, p2

    if-eqz v6, :cond_0

    .line 656
    aget-object v6, v4, p2

    iget-object v7, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 658
    :cond_0
    if-eqz v3, :cond_1

    .line 659
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    :cond_1
    aput-object v3, v4, p2

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "appTypes":[I
    .end local v2    # "i":I
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    aput-object v7, v6, p2

    .line 646
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimApplicationNum:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v7

    aput v7, v6, p2

    goto :goto_0

    .line 651
    .restart local v1    # "appTypes":[I
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_2

    .line 652
    .restart local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_4
    aget v6, v1, v2

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    goto :goto_3

    .line 653
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    goto :goto_4

    .line 664
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "oldRecordsArray":[Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    return-void

    .line 648
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private updateNewIccIds(Ljava/util/List;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 525
    sget v9, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v8, v9, [I

    .line 526
    .local v8, "simInsertStates":[I
    array-length v9, v8

    new-array v7, v9, [Ljava/lang/String;

    .line 528
    .local v7, "simIccIds":[Ljava/lang/String;
    const-string v9, "persist.radio.iccid"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "iccids":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 530
    array-length v9, v7

    invoke-static {v7, v11, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 541
    :cond_0
    array-length v9, v8

    new-array v4, v9, [Ljava/lang/String;

    .line 542
    .local v4, "newSimIccIds":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    .line 543
    .local v6, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 544
    .local v1, "i":I
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    goto :goto_0

    .line 532
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "newSimIccIds":[Ljava/lang/String;
    .end local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_0

    .line 534
    array-length v9, v5

    if-ge v1, v9, :cond_3

    aget-object v9, v5, v1

    :goto_2
    aput-object v9, v7, v1

    .line 535
    const-string v9, "<null>"

    aget-object v12, v7, v1

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 536
    aput-object v10, v7, v1

    .line 533
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 534
    goto :goto_2

    .line 547
    .end local v1    # "i":I
    .end local v5    # "parts":[Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newSimIccIds":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v9, v8

    if-ge v1, v9, :cond_9

    .line 548
    aget-object v9, v7, v1

    if-nez v9, :cond_6

    .line 549
    aget-object v9, v4, v1

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    aput v9, v8, v1

    .line 547
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 549
    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    .line 551
    :cond_6
    aget-object v9, v4, v1

    if-nez v9, :cond_7

    .line 552
    const/4 v9, 0x3

    aput v9, v8, v1

    goto :goto_5

    .line 554
    :cond_7
    aget-object v9, v4, v1

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v11

    :goto_6
    aput v9, v8, v1

    goto :goto_5

    :cond_8
    const/4 v9, 0x4

    goto :goto_6

    .line 560
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_7
    array-length v9, v4

    if-ge v1, v9, :cond_c

    .line 562
    if-eqz v1, :cond_a

    .line 563
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    :cond_a
    aget-object v9, v4, v1

    if-nez v9, :cond_b

    const-string v9, "<null>"

    :goto_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 566
    :cond_b
    aget-object v9, v4, v1

    goto :goto_8

    .line 568
    :cond_c
    const-string v9, "persist.radio.iccid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-object v8
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 747
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 748
    .local v2, "sp":Landroid/content/SharedPreferences;
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "currentMode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DefaultSimManager: PREFERRED_NETWORK_MODE init="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/DefaultSimManager;->mInitModes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsUsePreferred="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/telephony/DefaultSimManager;->mIsUsePreferred:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mPreferredDataSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmiui/telephony/DefaultSimManager;->mPreferredDataSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isUsePreferred="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_is_use_preferred"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preferredDataSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_preferred_data_slot"

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public getRuimImsi(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gpp2IccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimImsi(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->m3gppIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimInsertStates(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    if-nez v0, :cond_0

    .line 762
    sget-object v0, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSimInsertStates is not initialized,return SIM_NO_CARD"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x1

    .line 765
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method getSystemDefaultSlotId()I
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    .line 233
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v2, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 237
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 232
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method onDefaultDataSubscriptionChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 457
    iget v5, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 458
    .local v5, "userDataSlotId":I
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v5, v6, :cond_0

    .line 459
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onDefaultDataSubscriptionChanged waiting for valid user data slot"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v4

    .line 463
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 464
    .local v2, "modemDataSubId":I
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 465
    .local v1, "modemDataSlotId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 466
    .local v3, "subInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 467
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    goto :goto_1

    .line 470
    .end local v3    # "subInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v1, v6, :cond_3

    .line 471
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onDefaultDataSubscriptionChanged waiting for valid modem data slot"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_3
    if-ne v1, v5, :cond_6

    .line 475
    iget v6, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v6, v1, :cond_4

    .line 476
    invoke-direct {p0, v1}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 477
    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 478
    iput v2, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    goto :goto_0

    .line 479
    :cond_4
    iget v6, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    if-eq v6, v2, :cond_5

    .line 480
    iput v2, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSubId:I

    .line 481
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v1, v6}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotReady(I[I)V

    goto :goto_0

    .line 483
    :cond_5
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onDefaultDataSubscriptionChanged ignore"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_6
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 488
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onDefaultDataSubscriptionChanged inconsistent and wait for init"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ne v6, v7, :cond_8

    .line 492
    invoke-direct {p0, v4}, Lmiui/telephony/DefaultSimManager;->syncDataSubscription(Ljava/util/List;)V

    goto :goto_0

    .line 494
    :cond_8
    sget-object v6, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onDefaultDataSubscriptionChanged delay"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v6, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method onInitDefaultSlot()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 388
    const-string v8, "sys.in_shutdown_progress"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 389
    sget-object v8, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "this device is being shut down, ignore set sefault data slot."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v6

    .line 393
    .local v6, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v6}, Lmiui/telephony/DefaultSimManager;->isAllInfoReady(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 395
    invoke-virtual {p0}, Lmiui/telephony/DefaultSimManager;->onSubscriptionsChanged()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v10, :cond_2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 399
    const/4 v8, 0x0

    iput-object v8, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 400
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    .line 401
    .local v0, "dataSlot":I
    new-instance v8, Lmiui/telephony/DefaultSimManager$2;

    invoke-direct {v8, p0, v0}, Lmiui/telephony/DefaultSimManager$2;-><init>(Lmiui/telephony/DefaultSimManager;I)V

    invoke-virtual {v8}, Lmiui/telephony/DefaultSimManager$2;->start()V

    goto :goto_0

    .line 411
    .end local v0    # "dataSlot":I
    :cond_2
    invoke-direct {p0, v6}, Lmiui/telephony/DefaultSimManager;->updateNewIccIds(Ljava/util/List;)[I

    move-result-object v8

    iput-object v8, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    .line 413
    iget v7, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .local v7, "vs":I
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 414
    .local v1, "ds":I
    iput v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    .line 415
    invoke-direct {p0, v1, v6}, Lmiui/telephony/DefaultSimManager;->getDataSlotForVirtualSim(ILjava/util/List;)I

    move-result v1

    .line 416
    invoke-static {v7}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v11, p0, Lmiui/telephony/DefaultSimManager;->mSimStatus:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v11, v11, v7

    if-eq v8, v11, :cond_3

    sget v8, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-le v8, v10, :cond_4

    invoke-static {v7}, Lmiui/telephony/DefaultSimManager;->isDcOnlyVirtualSim(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 418
    :cond_3
    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 420
    :cond_4
    const/4 v2, 0x0

    .line 421
    .local v2, "foundDataSubInfo":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    .line 422
    .local v5, "si":Lmiui/telephony/SubscriptionInfo;
    sget-object v8, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: sub="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iccid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-nez v2, :cond_5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    if-ne v8, v1, :cond_6

    :cond_5
    move v2, v10

    .line 424
    :goto_2
    goto :goto_1

    :cond_6
    move v2, v9

    .line 423
    goto :goto_2

    .line 425
    .end local v5    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v10, :cond_a

    .line 426
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 440
    :cond_8
    :goto_3
    iget-object v8, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    if-eqz v8, :cond_9

    .line 441
    iget-object v8, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    iget-object v9, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-interface {v8, v9, v1}, Lmiui/telephony/DefaultSlotSelector;->getDefaultDataSlot([II)I

    move-result v4

    .line 442
    .local v4, "newDs":I
    if-eq v1, v4, :cond_9

    invoke-static {v4}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 443
    move v1, v4

    .line 446
    .end local v4    # "newDs":I
    :cond_9
    sget-object v8, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vs = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current_ds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simInsertStates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v10}, Lmiui/telephony/DefaultSimManager;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_0
    iget-object v8, p0, Lmiui/telephony/DefaultSimManager;->mSimInsertStates:[I

    invoke-direct {p0, v1, v8}, Lmiui/telephony/DefaultSimManager;->initDefaultDataSlotId(I[I)V

    .line 450
    sget-object v8, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lmiui/telephony/DefaultSimManager;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 427
    :cond_a
    if-nez v2, :cond_b

    .line 428
    invoke-virtual {p0}, Lmiui/telephony/DefaultSimManager;->getSystemDefaultSlotId()I

    move-result v1

    .line 429
    sget-object v8, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "use system default slotId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 430
    :cond_b
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardActivateHelper;->isActivate(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 431
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    .line 432
    .restart local v5    # "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    if-eq v8, v1, :cond_c

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 433
    sget-object v8, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "si.isActivated()= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "si.getSlotId()= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 435
    goto/16 :goto_3
.end method

.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "subInfoImpls":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->isAllInfoReady(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 245
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0, v0}, Lmiui/telephony/DefaultSimManager;->isSameWithBefore(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 249
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged for one sub"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object v0, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 251
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 253
    :cond_2
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionsChanged update subSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-object v0, p0, Lmiui/telephony/DefaultSimManager;->mLastSubInfos:Ljava/util/List;

    .line 255
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onVirtualSimPreciseStateChanged()V
    .locals 4

    .prologue
    .line 718
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/VirtualSimUtils;->isDisablingVirtualSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "key_is_use_preferred"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 722
    :cond_0
    return-void
.end method

.method public onVirtualSimStateChanged()V
    .locals 5

    .prologue
    .line 726
    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "key_is_use_preferred"

    const/4 v1, 0x0

    const-string v2, "key_preferred_data_slot"

    const-string v3, "persist.radio.default.data"

    sget v4, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 731
    :cond_0
    return-void
.end method

.method setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is trying to set default data slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlDataSlotId:I

    .line 198
    const-string v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "key_is_use_preferred"

    invoke-static {}, Lmiui/telephony/VirtualSimUtils;->getInstance()Lmiui/telephony/VirtualSimUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/VirtualSimUtils;->isVirtualSimEnabled()Z

    move-result v2

    const-string v3, "key_preferred_data_slot"

    invoke-static {v1, v2, v3, p1}, Lmiui/telephony/DefaultSimManager;->storeValues(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 204
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 205
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 206
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 211
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 213
    .end local v0    # "subId":I
    :goto_1
    return v1

    .line 207
    .restart local v0    # "subId":I
    :cond_1
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager;->broadcastDataSlotChanged(I)V

    .line 209
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 213
    .end local v0    # "subId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDefaultSlotSelector(Lmiui/telephony/DefaultSlotSelector;)V
    .locals 0
    .param p1, "selector"    # Lmiui/telephony/DefaultSlotSelector;

    .prologue
    .line 169
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    .line 170
    return-void
.end method

.method setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v1, Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is trying to set default voice slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v1, :cond_0

    .line 177
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "slotId":I
    :goto_0
    iput p1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    .line 178
    const-string v1, "persist.radio.default.voice"

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v1, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v1, v2, :cond_2

    .line 180
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 177
    .restart local p1    # "slotId":I
    :cond_1
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0

    .line 184
    .end local p1    # "slotId":I
    :cond_2
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    iget v2, p0, Lmiui/telephony/DefaultSimManager;->mPropertyDefautlVoiceSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 185
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 186
    iget-object v1, p0, Lmiui/telephony/DefaultSimManager;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_1
.end method
