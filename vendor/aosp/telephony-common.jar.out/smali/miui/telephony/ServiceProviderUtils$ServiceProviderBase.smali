.class abstract Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;
.super Ljava/lang/Object;
.source "ServiceProviderUtils.java"

# interfaces
.implements Lmiui/telephony/ServiceProviderUtils$IServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ServiceProviderBase"
.end annotation


# instance fields
.field private final conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

.field private names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V
    .locals 2
    .param p2, "conditions"    # [Lmiui/telephony/ServiceProviderUtils$Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 69
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    .line 70
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string v1, "spn should have base name"

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    .line 75
    iput-object p2, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    .line 76
    return-void
.end method


# virtual methods
.method public getName()Lmiui/telephony/ServiceProviderUtils$Name;
    .locals 6

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "locale":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 98
    # getter for: Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z
    invoke-static {}, Lmiui/telephony/ServiceProviderUtils;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getName: locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v3, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    check-cast v2, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 100
    .restart local v2    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 101
    .local v0, "end":I
    if-ltz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_1
    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 104
    .end local v0    # "end":I
    :cond_2
    if-nez v2, :cond_3

    .line 105
    iget-object v3, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    check-cast v2, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 107
    .restart local v2    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_3
    return-object v2
.end method

.method public match(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v4, 0x1

    .line 80
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    if-nez v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v4

    .line 84
    :cond_1
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    .local v0, "arr$":[Lmiui/telephony/ServiceProviderUtils$Condition;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 85
    .local v1, "c":Lmiui/telephony/ServiceProviderUtils$Condition;
    invoke-virtual {v1, p1, p2, p3}, Lmiui/telephony/ServiceProviderUtils$Condition;->execute(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "c":Lmiui/telephony/ServiceProviderUtils$Condition;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/ServiceProviderUtils$Name;

    invoke-virtual {v5}, Lmiui/telephony/ServiceProviderUtils$Name;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 115
    const-string v5, ", {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v2, 0x1

    .line 117
    .local v2, "first":Z
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->names:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    if-nez v2, :cond_1

    .line 123
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"=>\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    :cond_2
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .end local v2    # "first":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    if-eqz v5, :cond_6

    .line 133
    const-string v5, ", condition=["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 135
    if-eqz v3, :cond_4

    .line 136
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_4
    iget-object v5, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->conditions:[Lmiui/telephony/ServiceProviderUtils$Condition;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :cond_5
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
