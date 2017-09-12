.class Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
.super Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProvider"
.end annotation


# instance fields
.field private mvnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final numerics:[I


# direct methods
.method public constructor <init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V
    .locals 8
    .param p1, "numerics"    # [I
    .param p3, "conditions"    # [Lmiui/telephony/ServiceProviderUtils$Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
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
    .line 152
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-direct {p0, p2, p3}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;-><init>(Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 154
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 155
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "spn should have at least one numeric"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    :cond_1
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 159
    .local v5, "sia":Landroid/util/SparseIntArray;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 160
    .local v4, "numeric":I
    invoke-virtual {v5, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v4    # "numeric":I
    :cond_2
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_3

    .line 165
    iget-object v6, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v6, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    .line 169
    return-void
.end method


# virtual methods
.method public addMvno(Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;)V
    .locals 1
    .param p1, "vsp"    # Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public getAllVirtualServiceProvider()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaseNumeric()I
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNumerics()[I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "numeric=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super {p0}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
