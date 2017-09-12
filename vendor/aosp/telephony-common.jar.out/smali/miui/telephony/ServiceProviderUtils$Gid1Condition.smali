.class Lmiui/telephony/ServiceProviderUtils$Gid1Condition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gid1Condition"
.end annotation


# instance fields
.field private final mGid1s:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "gid1s"    # [Ljava/lang/String;

    .prologue
    .line 686
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 687
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 688
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 689
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 690
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;->mGid1s:[Ljava/lang/String;

    .line 695
    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v6, 0x0

    .line 699
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 700
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v4, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v6

    .line 704
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 708
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "gid1":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 711
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;->mGid1s:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 712
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    const/4 v6, 0x1

    goto :goto_0

    .line 711
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITION: when gid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;->mGid1s:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
