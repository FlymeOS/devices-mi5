.class final Lmiui/widget/TimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/TimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/widget/TimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ay(I)[Lmiui/widget/TimePicker$SavedState;
    .locals 1

    .prologue
    .line 289
    new-array v0, p1, [Lmiui/widget/TimePicker$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker$SavedState$1;->l(Landroid/os/Parcel;)Lmiui/widget/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroid/os/Parcel;)Lmiui/widget/TimePicker$SavedState;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lmiui/widget/TimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;Lmiui/widget/TimePicker$1;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker$SavedState$1;->ay(I)[Lmiui/widget/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
