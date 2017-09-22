.class Lmiui/widget/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/widget/ScreenView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field XN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1963
    new-instance v0, Lmiui/widget/ScreenView$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/ScreenView$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1974
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$SavedState;->XN:I

    .line 1982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView$SavedState;->XN:I

    .line 1983
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .prologue
    .line 1961
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1977
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1974
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$SavedState;->XN:I

    .line 1978
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1987
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1988
    iget v0, p0, Lmiui/widget/ScreenView$SavedState;->XN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    return-void
.end method
