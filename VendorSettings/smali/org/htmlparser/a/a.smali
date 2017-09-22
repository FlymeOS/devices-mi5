.class public Lorg/htmlparser/a/a;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field protected static bsU:Ljava/util/Hashtable;

.field private static final bsV:[Ljava/lang/String;

.field private static final bsW:[C

.field protected static final bth:Ljava/text/SimpleDateFormat;


# instance fields
.field protected bsX:Ljava/util/Hashtable;

.field protected bsY:Ljava/lang/String;

.field protected bsZ:I

.field protected bta:Ljava/lang/String;

.field protected btb:Ljava/lang/String;

.field protected btc:Ljava/lang/String;

.field protected btd:Ljava/lang/String;

.field protected bte:Ljava/util/Hashtable;

.field protected btf:Lorg/htmlparser/a/b;

.field protected btg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/htmlparser/a/a;->bsU:Ljava/util/Hashtable;

    .line 59
    sget-object v0, Lorg/htmlparser/a/a;->bsU:Ljava/util/Hashtable;

    const-string v1, "User-Agent"

    const-string v2, "HTMLParser/2.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/htmlparser/a/a;->bsU:Ljava/util/Hashtable;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    const-string v2, "The web site you seek cannot be located, but countless more exist"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 71
    const-string v2, "You step in the stream, but the water has moved on. This page is not here."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 73
    const-string v2, "Yesterday the page existed. Today it does not. The internet is like that."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 75
    const-string v2, "That page was so big. It might have been very useful. But now it is gone."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 77
    const-string v2, "Three things are certain: death, taxes and broken links. Guess which has occured."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 79
    const-string v2, "Chaos reigns within. Reflect, repent and enter the correct URL. Order shall return."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 81
    const-string v2, "Stay the patient course. Of little worth is your ire. The page is not found."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 83
    const-string v2, "A non-existant URL reduces your expensive computer to a simple stone."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 84
    const-string v2, "Many people have visited that page. Today, you are not one of the lucky ones."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 86
    const-string v2, "Cutting the wind with a knife. Bookmarking a URL. Both are ephemeral."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 88
    const-string v2, "The code was willing, it considered your request, but the chips were weak."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 89
    const-string v2, "Errors have occurred. We won\'t tell you where or why. Lazy programmers."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 90
    const-string v2, "This site has been moved. We\'d tell you where, but then we\'d have to delete you."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 91
    const-string v2, "There is a chasm of carbon and silicon the software can\'t bridge."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 92
    const-string v2, "To have no errors would be life without meaning; no struggle, no joy."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 93
    const-string v2, "Hal, open the file. Hal, open the damn file, Hal open the, please Hal."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 94
    const-string v2, "Having been erased, the document you\'re seeking must now be retyped."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 95
    const-string v2, "The ten thousand things how long do any persist? That page, too, has gone."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 96
    const-string v2, "Rather than a beep or a rude error message, these words: \"File not found.\""

    aput-object v2, v0, v1

    .line 67
    sput-object v0, Lorg/htmlparser/a/a;->bsV:[Ljava/lang/String;

    .line 103
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 102
    sput-object v0, Lorg/htmlparser/a/a;->bsW:[C

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd-MMM-yy kk:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    sput-object v0, Lorg/htmlparser/a/a;->bth:Ljava/text/SimpleDateFormat;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lorg/htmlparser/a/a;->Nx()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/htmlparser/a/a;-><init>(Ljava/util/Hashtable;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/htmlparser/a/a;->bsX:Ljava/util/Hashtable;

    .line 178
    iput-object v0, p0, Lorg/htmlparser/a/a;->bsY:Ljava/lang/String;

    .line 179
    iput v1, p0, Lorg/htmlparser/a/a;->bsZ:I

    .line 180
    iput-object v0, p0, Lorg/htmlparser/a/a;->bta:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lorg/htmlparser/a/a;->btb:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lorg/htmlparser/a/a;->btc:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lorg/htmlparser/a/a;->btd:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lorg/htmlparser/a/a;->bte:Ljava/util/Hashtable;

    .line 185
    iput-object v0, p0, Lorg/htmlparser/a/a;->btf:Lorg/htmlparser/a/b;

    .line 186
    iput-boolean v1, p0, Lorg/htmlparser/a/a;->btg:Z

    .line 187
    return-void
.end method

.method public static Nx()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lorg/htmlparser/a/a;->bsU:Ljava/util/Hashtable;

    return-object v0
.end method
