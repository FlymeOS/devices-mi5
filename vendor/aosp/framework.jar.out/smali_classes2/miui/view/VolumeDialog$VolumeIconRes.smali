.class Lmiui/view/VolumeDialog$VolumeIconRes;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeIconRes"
.end annotation


# instance fields
.field mutedIconRes:I

.field normalIconRes:I

.field selectedIconRes:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "nIcon"    # I
    .param p2, "sIcon"    # I
    .param p3, "mIcon"    # I

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput p1, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    .line 906
    iput p2, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->selectedIconRes:I

    .line 907
    iput p3, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    .line 908
    return-void
.end method

.method synthetic constructor <init>(IIILmiui/view/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lmiui/view/VolumeDialog$1;

    .prologue
    .line 899
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(III)V

    return-void
.end method
