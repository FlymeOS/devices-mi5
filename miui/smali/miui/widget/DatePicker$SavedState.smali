.class Lmiui/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Pk:I

.field private final Pl:I

.field private final Pm:I

.field private final Pn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 782
    new-instance v0, Lmiui/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 764
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->Pk:I

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->Pl:I

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/widget/DatePicker$SavedState;->Pm:I

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->Pn:Z

    .line 769
    return-void

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/DatePicker$1;)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 754
    iput p2, p0, Lmiui/widget/DatePicker$SavedState;->Pk:I

    .line 755
    iput p3, p0, Lmiui/widget/DatePicker$SavedState;->Pl:I

    .line 756
    iput p4, p0, Lmiui/widget/DatePicker$SavedState;->Pm:I

    .line 757
    iput-boolean p5, p0, Lmiui/widget/DatePicker$SavedState;->Pn:Z

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V
    .locals 0

    .prologue
    .line 739
    invoke-direct/range {p0 .. p5}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pk:I

    return v0
.end method

.method static synthetic b(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pl:I

    return v0
.end method

.method static synthetic c(Lmiui/widget/DatePicker$SavedState;)I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pm:I

    return v0
.end method

.method static synthetic d(Lmiui/widget/DatePicker$SavedState;)Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->Pn:Z

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 773
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget v0, p0, Lmiui/widget/DatePicker$SavedState;->Pm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->Pn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
