.class public Lmiui/text/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final EP:I = 0xc

.field private static final EQ:I = 0xf

.field private static final EU:I = 0x23

.field private static final EV:I = 0x8

.field private static final EW:I = 0x3

.field private static final EX:Ljava/lang/String; = "\u094d"

.field private static Fl:Lmiui/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static Fm:Lmiui/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/text/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EY:[Ljava/lang/String;

.field private EZ:[Ljava/lang/String;

.field private Fa:[Ljava/lang/String;

.field private Fb:[Ljava/lang/String;

.field private Fc:[Ljava/lang/String;

.field private Fd:[Ljava/lang/String;

.field private Fe:[Ljava/lang/String;

.field private Ff:[Ljava/lang/String;

.field private Fg:[Ljava/lang/String;

.field private Fh:[Ljava/lang/String;

.field private Fi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Fj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Fk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 332
    new-instance v0, Lmiui/text/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiui/text/HindiPinyinConverter;->p:Lmiui/util/SoftReferenceSingleton;

    .line 340
    new-instance v0, Lmiui/text/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$2;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    .line 352
    new-instance v0, Lmiui/text/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->Fm:Lmiui/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->cC()V

    .line 369
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->cD()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/HindiPinyinConverter$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 506
    sget-object v0, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 508
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 509
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 510
    if-le v5, v7, :cond_0

    .line 511
    add-int/lit8 v5, v5, -0x1

    add-int/2addr v1, v5

    .line 514
    :cond_0
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 515
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 507
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_1
    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 520
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    sget-object v2, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 522
    return-object v1
.end method

.method private static varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 496
    sget-object v0, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 497
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    sget-object v2, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 502
    return-object v1
.end method

.method private cC()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    .line 73
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    .line 74
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    .line 77
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    .line 82
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    .line 83
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fk:Ljava/util/HashMap;

    .line 92
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const-string v1, "\u0905"

    aput-object v1, v0, v3

    .line 93
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const-string v1, "\u0906"

    aput-object v1, v0, v4

    .line 94
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const-string v1, "\u0907"

    aput-object v1, v0, v5

    .line 95
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const-string v1, "\u0908"

    aput-object v1, v0, v6

    .line 96
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const-string v1, "\u0909"

    aput-object v1, v0, v7

    .line 97
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u090a"

    aput-object v2, v0, v1

    .line 98
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u090b"

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u090f"

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u0910"

    aput-object v2, v0, v1

    .line 101
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u0911"

    aput-object v2, v0, v1

    .line 102
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u0913"

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u0914"

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    .line 106
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const-string v1, "aa"

    aput-object v1, v0, v4

    .line 107
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const-string v1, "i"

    aput-object v1, v0, v5

    .line 108
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const-string v1, "ee"

    aput-object v1, v0, v6

    .line 109
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const-string v1, "u"

    aput-object v1, v0, v7

    .line 110
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "oo"

    aput-object v2, v0, v1

    .line 111
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "r"

    aput-object v2, v0, v1

    .line 112
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "e"

    aput-object v2, v0, v1

    .line 113
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "ai"

    aput-object v2, v0, v1

    .line 114
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "o"

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "o"

    aput-object v2, v0, v1

    .line 116
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "au"

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const-string v1, "\u093e"

    aput-object v1, v0, v3

    .line 122
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const-string v1, "\u093f"

    aput-object v1, v0, v4

    .line 123
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const-string v1, "\u0940"

    aput-object v1, v0, v5

    .line 124
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const-string v1, "\u0941"

    aput-object v1, v0, v6

    .line 125
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const-string v1, "\u0942"

    aput-object v1, v0, v7

    .line 126
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u0943"

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u0944"

    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u0945"

    aput-object v2, v0, v1

    .line 129
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u0947"

    aput-object v2, v0, v1

    .line 130
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u0948"

    aput-object v2, v0, v1

    .line 131
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u0949"

    aput-object v2, v0, v1

    .line 132
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u094b"

    aput-object v2, v0, v1

    .line 133
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\u094c"

    aput-object v2, v0, v1

    .line 134
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\u094e"

    aput-object v2, v0, v1

    .line 135
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "\u094f"

    aput-object v2, v0, v1

    .line 137
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const-string v1, "aa"

    aput-object v1, v0, v3

    .line 138
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const-string v1, "i"

    aput-object v1, v0, v4

    .line 139
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const-string v1, "ee"

    aput-object v1, v0, v5

    .line 140
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const-string v1, "u"

    aput-object v1, v0, v6

    .line 141
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const-string v1, "oo"

    aput-object v1, v0, v7

    .line 142
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "r"

    aput-object v2, v0, v1

    .line 143
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "R"

    aput-object v2, v0, v1

    .line 144
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "e"

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "e"

    aput-object v2, v0, v1

    .line 146
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "ai"

    aput-object v2, v0, v1

    .line 147
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "o"

    aput-object v2, v0, v1

    .line 148
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "o"

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "au"

    aput-object v2, v0, v1

    .line 150
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    .line 151
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "aw"

    aput-object v2, v0, v1

    .line 156
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const-string v1, "\u0915"

    aput-object v1, v0, v3

    .line 157
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const-string v1, "\u0916"

    aput-object v1, v0, v4

    .line 158
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const-string v1, "\u0917"

    aput-object v1, v0, v5

    .line 159
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const-string v1, "\u0918"

    aput-object v1, v0, v6

    .line 160
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const-string v1, "\u0919"

    aput-object v1, v0, v7

    .line 161
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u091a"

    aput-object v2, v0, v1

    .line 162
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u091b"

    aput-object v2, v0, v1

    .line 163
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u091c"

    aput-object v2, v0, v1

    .line 164
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u091d"

    aput-object v2, v0, v1

    .line 165
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u091e"

    aput-object v2, v0, v1

    .line 166
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u091f"

    aput-object v2, v0, v1

    .line 167
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u0920"

    aput-object v2, v0, v1

    .line 168
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\u0921"

    aput-object v2, v0, v1

    .line 169
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\u0922"

    aput-object v2, v0, v1

    .line 170
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "\u0923"

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "\u0924"

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "\u0925"

    aput-object v2, v0, v1

    .line 173
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "\u0926"

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "\u0927"

    aput-object v2, v0, v1

    .line 175
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "\u0928"

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "\u0929"

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "\u092a"

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "\u092b"

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "\u092c"

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "\u092d"

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "\u092e"

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "\u092f"

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "\u0930"

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v2, "\u0931"

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v2, "\u0932"

    aput-object v2, v0, v1

    .line 186
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "\u0935"

    aput-object v2, v0, v1

    .line 187
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "\u0936"

    aput-object v2, v0, v1

    .line 188
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "\u0937"

    aput-object v2, v0, v1

    .line 189
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "\u0938"

    aput-object v2, v0, v1

    .line 190
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\u0939"

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const-string v1, "k"

    aput-object v1, v0, v3

    .line 193
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const-string v1, "kh"

    aput-object v1, v0, v4

    .line 194
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const-string v1, "g"

    aput-object v1, v0, v5

    .line 195
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const-string v1, "gh"

    aput-object v1, v0, v6

    .line 196
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const-string v1, "ng"

    aput-object v1, v0, v7

    .line 197
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "c"

    aput-object v2, v0, v1

    .line 198
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "ch"

    aput-object v2, v0, v1

    .line 199
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "j"

    aput-object v2, v0, v1

    .line 200
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "jh"

    aput-object v2, v0, v1

    .line 201
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "ny"

    aput-object v2, v0, v1

    .line 202
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "T"

    aput-object v2, v0, v1

    .line 203
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Th"

    aput-object v2, v0, v1

    .line 204
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "D"

    aput-object v2, v0, v1

    .line 205
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "Dh"

    aput-object v2, v0, v1

    .line 206
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    .line 207
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "t"

    aput-object v2, v0, v1

    .line 208
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "th"

    aput-object v2, v0, v1

    .line 209
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "d"

    aput-object v2, v0, v1

    .line 210
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "dh"

    aput-object v2, v0, v1

    .line 211
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "n"

    aput-object v2, v0, v1

    .line 212
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "Nn"

    aput-object v2, v0, v1

    .line 213
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "p"

    aput-object v2, v0, v1

    .line 214
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "ph"

    aput-object v2, v0, v1

    .line 215
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "b"

    aput-object v2, v0, v1

    .line 216
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "bh"

    aput-object v2, v0, v1

    .line 217
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "m"

    aput-object v2, v0, v1

    .line 218
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    .line 219
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "r"

    aput-object v2, v0, v1

    .line 220
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1c

    const-string v2, "R"

    aput-object v2, v0, v1

    .line 221
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1d

    const-string v2, "l"

    aput-object v2, v0, v1

    .line 222
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "v"

    aput-object v2, v0, v1

    .line 223
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "sh"

    aput-object v2, v0, v1

    .line 224
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "S"

    aput-object v2, v0, v1

    .line 225
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "s"

    aput-object v2, v0, v1

    .line 226
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "h"

    aput-object v2, v0, v1

    .line 231
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const-string v1, "\u0958"

    aput-object v1, v0, v3

    .line 232
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const-string v1, "\u0959"

    aput-object v1, v0, v4

    .line 233
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const-string v1, "\u095a"

    aput-object v1, v0, v5

    .line 234
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const-string v1, "\u095b"

    aput-object v1, v0, v6

    .line 235
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const-string v1, "\u095c"

    aput-object v1, v0, v7

    .line 236
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u095d"

    aput-object v2, v0, v1

    .line 237
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u095e"

    aput-object v2, v0, v1

    .line 238
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u095f"

    aput-object v2, v0, v1

    .line 240
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const-string v1, "q"

    aput-object v1, v0, v3

    .line 241
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const-string v1, "khh"

    aput-object v1, v0, v4

    .line 242
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const-string v1, "ghh"

    aput-object v1, v0, v5

    .line 243
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const-string v1, "z"

    aput-object v1, v0, v6

    .line 244
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const-string v1, "Ddh"

    aput-object v1, v0, v7

    .line 245
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "rh"

    aput-object v2, v0, v1

    .line 246
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "f"

    aput-object v2, v0, v1

    .line 247
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "Y"

    aput-object v2, v0, v1

    .line 252
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    const-string v1, "\u0901"

    aput-object v1, v0, v3

    .line 253
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    const-string v1, "\u0902"

    aput-object v1, v0, v4

    .line 254
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    const-string v1, "\u0903"

    aput-object v1, v0, v5

    .line 256
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    const-string v1, "an"

    aput-object v1, v0, v3

    .line 257
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    const-string v1, "an"

    aput-object v1, v0, v4

    .line 258
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    const-string v1, "ah"

    aput-object v1, v0, v5

    .line 259
    return-void
.end method

.method private cD()V
    .locals 11

    .prologue
    const/16 v6, 0x8

    const/16 v10, 0xf

    const/4 v9, 0x3

    const/16 v8, 0x23

    const/4 v1, 0x0

    .line 263
    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_0

    .line 264
    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 268
    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 269
    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->EY:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 270
    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->EZ:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 271
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 273
    :goto_2
    if-ge v0, v6, :cond_2

    .line 274
    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 275
    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 276
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    .line 280
    :goto_3
    if-ge v2, v8, :cond_5

    move v0, v1

    .line 281
    :goto_4
    if-ge v0, v10, :cond_3

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move v0, v1

    .line 286
    :goto_5
    if-ge v0, v9, :cond_4

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 280
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v1

    .line 292
    :goto_6
    if-ge v2, v6, :cond_8

    move v0, v1

    .line 293
    :goto_7
    if-ge v0, v10, :cond_6

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fe:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Ff:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v1

    .line 298
    :goto_8
    if-ge v0, v9, :cond_7

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 292
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_8
    move v0, v1

    .line 304
    :goto_9
    if-ge v0, v8, :cond_9

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u094d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 307
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    move v0, v1

    .line 309
    :goto_a
    const/16 v2, 0xc

    if-ge v0, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    move v3, v1

    .line 318
    :goto_b
    if-ge v3, v8, :cond_d

    move v2, v1

    .line 319
    :goto_c
    if-ge v2, v10, :cond_c

    move v0, v1

    .line 320
    :goto_d
    if-ge v0, v9, :cond_b

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fc:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fa:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Fg:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->Fd:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->Fb:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->Fh:[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->Fk:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 319
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 318
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 329
    :cond_d
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    const-string v1, "\u0905\u0902"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public static getInstance()Lmiui/text/HindiPinyinConverter;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lmiui/text/HindiPinyinConverter;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/HindiPinyinConverter;

    return-object v0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 422
    sget-object v2, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 423
    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    :goto_0
    if-ge v7, v10, :cond_9

    .line 424
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 425
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 426
    add-int v3, v7, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 427
    const-string v5, ""

    .line 428
    const-string v3, ""

    .line 429
    const-string v6, ""

    .line 430
    add-int/2addr v7, v4

    .line 431
    if-ge v7, v10, :cond_0

    .line 432
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 433
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 434
    add-int v3, v7, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 436
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 443
    :cond_1
    add-int v12, v7, v4

    .line 444
    if-ge v12, v10, :cond_a

    .line 445
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 446
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 447
    add-int v4, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 449
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 451
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v12}, Lmiui/text/HindiPinyinConverter;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 454
    add-int v4, v7, v6

    :goto_3
    move v7, v4

    .line 463
    goto :goto_1

    .line 455
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v7

    .line 457
    goto :goto_3

    .line 460
    :cond_3
    const-string v6, "HindiPinyinConverter"

    const-string v12, "Ignore unknown hindi: %s%s%s %s"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/4 v11, 0x1

    aput-object v3, v15, v11

    const/4 v3, 0x2

    aput-object v4, v15, v3

    invoke-static {v15}, Lmiui/text/HindiPinyinConverter;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/text/HindiPinyinConverter;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    move v4, v7

    goto :goto_3

    .line 465
    :cond_4
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v13}, Lmiui/text/HindiPinyinConverter;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 466
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    invoke-static {v14}, Lmiui/text/HindiPinyinConverter;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 467
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/text/HindiPinyinConverter;->Fk:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fk:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    add-int v7, v12, v6

    goto/16 :goto_1

    .line 470
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fj:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 472
    add-int/2addr v7, v6

    goto/16 :goto_1

    .line 473
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Fi:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_1

    .line 478
    :cond_7
    const-string v6, "HindiPinyinConverter"

    const-string v12, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/4 v11, 0x1

    aput-object v3, v15, v11

    const/4 v3, 0x2

    aput-object v4, v15, v3

    invoke-static {v15}, Lmiui/text/HindiPinyinConverter;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/text/HindiPinyinConverter;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v3, v5

    goto/16 :goto_1

    .line 488
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    sget-object v4, Lmiui/text/HindiPinyinConverter;->Fl:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4, v2}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 491
    const-string v2, "HindiPinyinConverter"

    const-string v6, "hindiToPinyin(): using time %d ms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-object v3

    :cond_a
    move-object/from16 v17, v6

    move v6, v4

    move-object/from16 v4, v17

    goto/16 :goto_2
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 385
    sget-object v0, Lmiui/text/HindiPinyinConverter;->Fm:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v2, "ee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const-string v2, "ee"

    const-string v3, "ii"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    const-string v2, "oo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    const-string v2, "oo"

    const-string v3, "uu"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    const-string v2, "v"

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    sget-object v1, Lmiui/text/HindiPinyinConverter;->Fm:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    const-string v4, "aa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 409
    sget-object v3, Lmiui/text/HindiPinyinConverter;->Fm:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v3, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lmiui/text/HindiPinyinConverter;->Fm:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, v1}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 411
    return-object v2
.end method
