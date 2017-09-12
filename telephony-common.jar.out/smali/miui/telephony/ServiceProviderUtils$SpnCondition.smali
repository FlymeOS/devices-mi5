.class Lmiui/telephony/ServiceProviderUtils$SpnCondition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpnCondition"
.end annotation


# instance fields
.field private final mSpns:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "spns"    # [Ljava/lang/String;

    .prologue
    .line 597
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 598
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 599
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 600
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 601
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/telephony/ServiceProviderUtils$SpnCondition;->mSpns:[Ljava/lang/String;

    .line 606
    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    .line 610
    move-object v1, p2

    .line 611
    .local v1, "executeSpn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 612
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 615
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 616
    .local v5, "trimSpn":Ljava/lang/String;
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$SpnCondition;->mSpns:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 617
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 618
    const/4 v6, 0x1

    .line 623
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "trimSpn":Ljava/lang/String;
    :goto_1
    return v6

    .line 616
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "trimSpn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "trimSpn":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITION: when spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$SpnCondition;->mSpns:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
