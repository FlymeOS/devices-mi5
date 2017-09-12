.class public Lmiui/maml/util/ConfigFile$Gadget;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/ConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gadget"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pa"    # Ljava/lang/String;
    .param p2, "gx"    # I
    .param p3, "gy"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lmiui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    .line 79
    iput p2, p0, Lmiui/maml/util/ConfigFile$Gadget;->x:I

    .line 80
    iput p3, p0, Lmiui/maml/util/ConfigFile$Gadget;->y:I

    .line 81
    return-void
.end method
