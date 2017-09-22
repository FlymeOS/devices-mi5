.class Lmiui/util/DirectIndexedFile$Reader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private Gn:[Lmiui/util/DirectIndexedFile$e;

.field private Hk:[[Ljava/lang/Object;

.field private Hl:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$a;I)I
    .locals 0

    .prologue
    .line 839
    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hl:I

    return p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$a;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$a;)[Lmiui/util/DirectIndexedFile$e;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Gn:[Lmiui/util/DirectIndexedFile$e;

    return-object v0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$a;[Lmiui/util/DirectIndexedFile$e;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Gn:[Lmiui/util/DirectIndexedFile$e;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$a;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hk:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$a;I)I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hl:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hl:I

    return v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$a;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object v0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Reader$a;)[[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hk:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Reader$a;)I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$a;->Hl:I

    return v0
.end method
