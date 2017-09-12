.class Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
.super Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualServiceProvider"
.end annotation


# instance fields
.field private final provider:Lmiui/telephony/ServiceProviderUtils$ServiceProvider;


# direct methods
.method public constructor <init>(Lmiui/telephony/ServiceProviderUtils$ServiceProvider;Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V
    .locals 0
    .param p1, "provider"    # Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    .param p3, "conditions"    # [Lmiui/telephony/ServiceProviderUtils$Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/telephony/ServiceProviderUtils$ServiceProvider;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;[",
            "Lmiui/telephony/ServiceProviderUtils$Condition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-direct {p0, p2, p3}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;-><init>(Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 217
    iput-object p1, p0, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->provider:Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 218
    return-void
.end method


# virtual methods
.method public getBaseNumeric()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->provider:Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    invoke-virtual {v0}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getBaseNumeric()I

    move-result v0

    return v0
.end method

.method public getNumerics()[I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->provider:Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    invoke-virtual {v0}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getNumerics()[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "numeric=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, p0, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->provider:Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    invoke-virtual {v3}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getNumerics()[I

    move-result-object v2

    .line 235
    .local v2, "numerics":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-super {p0}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
