.class Lmiui/date/Holidays$a;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/Holidays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton",
        "<",
        "Lmiui/date/Holidays;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lmiui/date/Holidays$a$1;

    invoke-direct {v0}, Lmiui/date/Holidays$a$1;-><init>()V

    invoke-static {v0}, Lmiui/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lmiui/date/Holidays$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bV()Lmiui/date/Holidays;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lmiui/date/Holidays;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/date/Holidays;-><init>(Lmiui/date/Holidays$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lmiui/date/Holidays$a;->bV()Lmiui/date/Holidays;

    move-result-object v0

    return-object v0
.end method
