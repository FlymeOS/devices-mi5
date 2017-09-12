.class public abstract Lmiui/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Lmiui/telephony/SubscriptionManager$Holder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_ID:I

.field public static final DEFAULT_SLOT_ID:I

.field public static final DEFAULT_SUBSCRIPTION_ID:I

.field public static final INVALID_PHONE_ID:I

.field public static final INVALID_SLOT_ID:I

.field public static final INVALID_SUBSCRIPTION_ID:I

.field protected static final LOG_TAG:Ljava/lang/String; = "MiuiSubscriptionManager"

.field public static final PHONE_KEY:Ljava/lang/String;

.field public static final SLOT_ID_1:I = 0x0

.field public static final SLOT_ID_2:I = 0x1

.field public static final SLOT_KEY:Ljava/lang/String;

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String;


# instance fields
.field private mAllSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInsertedSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 35
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    .line 38
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 41
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    .line 44
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    .line 47
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    .line 50
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getSubscriptionKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    .line 53
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getPhoneKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    .line 56
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getSlotKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    .line 92
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/SubscriptionManager;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/SubscriptionManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/SubscriptionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ensureSubscriptionInfoCache(Z)V
    .locals 4
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "update":Z
    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_2

    .line 139
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 140
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 143
    :cond_1
    const/4 v0, 0x1

    .line 145
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_5

    .line 146
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 147
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_4

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 150
    :cond_4
    const/4 v0, 0x1

    .line 152
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isDbg()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    const-string v2, "MiuiSubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureSubscriptionInfoCache "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_7

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " insert="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " all="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    invoke-static {v3}, Lmiui/telephony/SubscriptionManager;->toSimpleString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_6
    return-void

    .line 153
    :cond_7
    const-string v1, "false"

    goto :goto_0
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lmiui/telephony/SubscriptionManager$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method public static getPhoneId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 696
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPhoneIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 675
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 682
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlotIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 661
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 689
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 668
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRealSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 579
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 588
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 571
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 562
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putPhoneId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "phoneId"    # I

    .prologue
    .line 636
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 637
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 639
    return-void
.end method

.method public static putPhoneIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 603
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 604
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 606
    return-void
.end method

.method public static putSlotId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I

    .prologue
    .line 628
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 630
    return-void
.end method

.method public static putSlotIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I

    .prologue
    .line 595
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 597
    return-void
.end method

.method public static putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 652
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 655
    return-void
.end method

.method public static putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 619
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    return-void
.end method

.method public static putSubscriptionId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "subId"    # I

    .prologue
    .line 645
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 646
    return-void
.end method

.method public static putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .prologue
    .line 612
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 613
    return-void
.end method

.method public static toSimpleString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz p0, :cond_1

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 703
    .local v2, "si":Lmiui/telephony/SubscriptionInfo;
    const-string v3, " {id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iccid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 706
    .end local v2    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 709
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_1
    const-string v3, "[]"

    goto :goto_1
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 106
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 110
    :cond_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 286
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return-object v0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    .line 249
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getAllSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDataSlotId()I
.end method

.method public abstract getDefaultDataSubscriptionId()I
.end method

.method public abstract getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSlotId()I
    .locals 3

    .prologue
    .line 443
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 444
    .local v1, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 450
    :goto_0
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 451
    .local v0, "slotId":I
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    .line 455
    :cond_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne v0, v2, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v0

    .line 458
    :cond_2
    return v0

    .line 447
    .end local v0    # "slotId":I
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    goto :goto_0
.end method

.method protected abstract getDefaultSlotIdInternal()I
.end method

.method public getDefaultSmsSlotId()I
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method public abstract getDefaultSmsSubscriptionId()I
.end method

.method public abstract getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSubscriptionId()I
    .locals 2

    .prologue
    .line 416
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 417
    .local v0, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 423
    :goto_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 426
    :cond_1
    return v0

    .line 420
    :cond_2
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultVoiceSlotId()I
.end method

.method public abstract getDefaultVoiceSubscriptionId()I
.end method

.method public abstract getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getPhoneIdForSlot(I)I
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 369
    return p1
.end method

.method public getPhoneIdForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 344
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v1, :cond_2

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    .line 349
    .local v0, "phoneId":I
    :goto_1
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_0

    .line 348
    .end local v0    # "phoneId":I
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    goto :goto_1
.end method

.method protected getSlotId(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 354
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 355
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    .line 358
    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return v2

    :cond_1
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_0
.end method

.method public getSlotIdForPhone(I)I
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 380
    return p1
.end method

.method public getSlotIdForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 328
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v1, :cond_2

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    .line 333
    .local v0, "slotId":I
    :goto_1
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0

    .line 332
    .end local v0    # "slotId":I
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    goto :goto_1
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 391
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 405
    :goto_0
    return v2

    .line 395
    :cond_0
    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v2, :cond_1

    .line 396
    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 400
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 401
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_0

    .line 405
    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0
.end method

.method public getSubscriptionInfoCount()I
    .locals 4

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "activeCount":I
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 313
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method public getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 238
    :goto_0
    return-object v1

    .line 228
    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v3, :cond_1

    .line 229
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    .line 232
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 233
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    move-object v1, v2

    .line 238
    goto :goto_0
.end method

.method public getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 213
    :goto_0
    return-object v1

    .line 204
    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 209
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    move-object v1, v2

    .line 213
    goto :goto_0
.end method

.method public getSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    .line 276
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected onSubscriptionInfoChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v0, Lmiui/telephony/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManager$1;-><init>(Lmiui/telephony/SubscriptionManager;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 124
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    monitor-exit v1

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 133
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract setDefaultDataSlotId(I)V
.end method

.method public setDefaultDataSubscriptionId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    .line 508
    return-void
.end method

.method public setDefaultSmsSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 541
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 545
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    goto :goto_0
.end method

.method public abstract setDefaultSmsSubscriptionId(I)V
.end method

.method public abstract setDefaultVoiceSlotId(I)V
.end method

.method public setDefaultVoiceSubscriptionId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    .line 481
    return-void
.end method
