.class final Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$1;

    .prologue
    .line 95
    invoke-direct {p0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;->compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .locals 2
    .param p1, "sim1"    # Lmiui/telephony/SubscriptionInfo;
    .param p2, "sim2"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    .line 98
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
