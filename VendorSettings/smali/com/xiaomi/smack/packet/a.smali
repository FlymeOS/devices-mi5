.class public Lcom/xiaomi/smack/packet/a;
.super Ljava/lang/Object;
.source "CommonPacketExtension.java"

# interfaces
.implements Lcom/xiaomi/smack/packet/f;


# instance fields
.field private bii:Ljava/lang/String;

.field private bij:Ljava/lang/String;

.field private bik:[Ljava/lang/String;

.field private bil:[Ljava/lang/String;

.field private bim:Ljava/util/List;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    .line 69
    return-void
.end method

.method public static a([Lcom/xiaomi/smack/packet/a;)[Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 171
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Parcelable;

    .line 173
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 174
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/a;->toParcelable()Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 177
    goto :goto_0
.end method

.method public static l(Landroid/os/Bundle;)Lcom/xiaomi/smack/packet/a;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 199
    const-string v0, "ext_ele_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v0, "ext_ns"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    const-string v0, "ext_text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    const-string v0, "attributes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 203
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 207
    const/4 v8, 0x0

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v7

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    aput-object v0, v3, v6

    .line 212
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 213
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    .line 214
    goto :goto_0

    .line 216
    :cond_0
    const-string v0, "children"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "children"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 218
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v8

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v0, v8, v7

    .line 221
    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/xiaomi/smack/packet/a;->l(Landroid/os/Bundle;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 222
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v8

    .line 226
    :cond_2
    new-instance v0, Lcom/xiaomi/smack/packet/a;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/smack/packet/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xiaomi/smack/packet/a;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/smack/packet/a;

    invoke-static {v0}, Lcom/xiaomi/smack/packet/a;->a([Lcom/xiaomi/smack/packet/a;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 241
    :goto_1
    return-object v0

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/smack/d/g;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {p1}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v0, "ext_ele_name"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "ext_ns"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "ext_text"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const-string v0, "attributes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    const-string v0, "children"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    invoke-static {v2}, Lcom/xiaomi/smack/packet/a;->toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 158
    :cond_1
    return-object v1
.end method

.method public toParcelable()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/a;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/a;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "xmlns="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bij:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 115
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/a;->bik:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/packet/a;->bil:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 118
    invoke-static {v3}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 127
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/xiaomi/smack/packet/a;->bim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/a;

    .line 129
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/a;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 131
    :cond_4
    const-string v0, "</"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/a;->bii:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_5
    const-string v0, "/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
