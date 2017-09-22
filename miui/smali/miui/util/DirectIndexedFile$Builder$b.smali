.class Lmiui/util/DirectIndexedFile$Builder$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private Gi:Lmiui/util/DirectIndexedFile$Builder$c;

.field private Gj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DirectIndexedFile$Builder$c;",
            ">;"
        }
    .end annotation
.end field

.field private Gk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DirectIndexedFile$Builder$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private Gl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DirectIndexedFile$Builder$a;",
            ">;"
        }
    .end annotation
.end field

.field private Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private Gn:[Lmiui/util/DirectIndexedFile$e;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gj:Ljava/util/HashMap;

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gl:Ljava/util/ArrayList;

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gk:Ljava/util/ArrayList;

    .line 1179
    new-array v0, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 1180
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$b;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gl:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;Lmiui/util/DirectIndexedFile$Builder$c;)Lmiui/util/DirectIndexedFile$Builder$c;
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gi:Lmiui/util/DirectIndexedFile$Builder$c;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;[Lmiui/util/DirectIndexedFile$e;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gn:[Lmiui/util/DirectIndexedFile$e;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$b;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gm:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object v0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gj:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lmiui/util/DirectIndexedFile$Builder$b;)[Lmiui/util/DirectIndexedFile$e;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gn:[Lmiui/util/DirectIndexedFile$e;

    return-object v0
.end method

.method static synthetic f(Lmiui/util/DirectIndexedFile$Builder$b;)Lmiui/util/DirectIndexedFile$Builder$c;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->Gi:Lmiui/util/DirectIndexedFile$Builder$c;

    return-object v0
.end method
