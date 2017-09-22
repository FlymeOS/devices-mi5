.class public final Lorg/apache/thrift/a;
.super Ljava/lang/Object;
.source "TBaseHelper.java"


# static fields
.field private static final comparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/apache/thrift/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/thrift/c;-><init>(Lorg/apache/thrift/b;)V

    sput-object v0, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static N(II)I
    .locals 1

    .prologue
    .line 78
    if-ge p0, p1, :cond_0

    .line 79
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    if-ge p1, p0, :cond_1

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(BB)I
    .locals 1

    .prologue
    .line 58
    if-ge p0, p1, :cond_0

    .line 59
    const/4 v0, -0x1

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    if-ge p1, p0, :cond_1

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 126
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/nio/ByteBuffer;[BI)I
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 264
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    return v0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)I
    .locals 5

    .prologue
    .line 144
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 149
    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 150
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 151
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 159
    if-eqz v0, :cond_1

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(SS)I
    .locals 1

    .prologue
    .line 68
    if-ge p0, p1, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    if-ge p1, p0, :cond_1

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 226
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 227
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 228
    sub-int v0, v1, v3

    const/16 v2, 0x80

    if-le v0, v2, :cond_1

    add-int/lit16 v0, v3, 0x80

    :goto_0
    move v2, v3

    .line 230
    :goto_1
    if-ge v2, v0, :cond_2

    .line 231
    if-le v2, v3, :cond_0

    .line 232
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    aget-byte v5, v4, v2

    invoke-static {v5}, Lorg/apache/thrift/a;->d(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 236
    :cond_2
    if-eq v1, v0, :cond_3

    .line 237
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3
    return-void
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    move v1, v0

    .line 140
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 135
    sget-object v2, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 136
    if-eqz v2, :cond_2

    move v1, v2

    .line 137
    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;Ljava/util/Map;)I
    .locals 7

    .prologue
    .line 168
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return v0

    .line 174
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 175
    invoke-interface {v0, p0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 176
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 177
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 178
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 179
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 182
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    sget-object v2, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 186
    if-eqz v2, :cond_2

    move v0, v2

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    sget-object v2, Lorg/apache/thrift/a;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 190
    if-eqz v0, :cond_1

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d([B[B)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Lorg/apache/thrift/a;->N(II)I

    move-result v0

    .line 113
    if-eqz v0, :cond_1

    move v1, v0

    .line 122
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 116
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 117
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/thrift/a;->a(BB)I

    move-result v2

    .line 118
    if-eqz v2, :cond_2

    move v1, v2

    .line 119
    goto :goto_0

    .line 116
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static d(B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    or-int/lit16 v0, p0, 0x100

    and-int/lit16 v0, v0, 0x1ff

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(ZZ)I
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .prologue
    .line 247
    invoke-static {p0}, Lorg/apache/thrift/a;->g(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 251
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/thrift/a;->a(Ljava/nio/ByteBuffer;[BI)I

    goto :goto_0
.end method

.method public static g(JJ)I
    .locals 2

    .prologue
    .line 88
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    cmp-long v0, p2, p0

    if-gez v0, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 273
    invoke-static {p0}, Lorg/apache/thrift/a;->g(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/thrift/a;->f(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0
.end method
