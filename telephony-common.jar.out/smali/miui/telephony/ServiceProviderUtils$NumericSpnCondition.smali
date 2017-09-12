.class Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericSpnCondition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/ServiceProviderUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/ServiceProviderUtils$1;

    .prologue
    .line 727
    invoke-direct {p0}, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v1, 0x1

    .line 730
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v1

    .line 734
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq p3, v2, :cond_0

    .line 740
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceProvider"

    const-string v2, "Exception in execute NumericSpnCondition"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    const-string v0, "CONDITION: when plmn is numeric"

    return-object v0
.end method
