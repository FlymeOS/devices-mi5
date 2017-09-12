.class Lmiui/telephony/ServiceProviderUtils$ImsiCondition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsiCondition"
.end annotation


# instance fields
.field private final mImsis:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "imsis"    # [Ljava/lang/String;

    .prologue
    .line 635
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 636
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 637
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 638
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 639
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    .line 644
    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v9, 0x0

    .line 648
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 649
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v8, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v9

    .line 653
    :cond_1
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 657
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "imsi":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 661
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 662
    .local v5, "l":I
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 663
    .local v7, "m":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v5, v10, :cond_2

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 667
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 668
    .local v1, "c":C
    const/16 v10, 0x78

    if-eq v1, v10, :cond_3

    const/16 v10, 0x58

    if-eq v1, v10, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v1, v10, :cond_0

    .line 666
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 672
    .end local v1    # "c":C
    :cond_4
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITION: when imsi~="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
