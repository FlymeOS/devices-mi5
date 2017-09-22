.class Lmiui/util/Log$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field static final Ic:Lmiui/util/Log$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lmiui/util/Log$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/Log$b;-><init>(Lmiui/util/Log$1;)V

    sput-object v0, Lmiui/util/Log$c;->Ic:Lmiui/util/Log$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
