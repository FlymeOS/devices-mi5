.class final Lmiui/widget/DatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker$SavedState;
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
        "Lmiui/widget/DatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public af(I)[Lmiui/widget/DatePicker$SavedState;
    .locals 1

    .prologue
    .line 789
    new-array v0, p1, [Lmiui/widget/DatePicker$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker$SavedState$1;->h(Landroid/os/Parcel;)Lmiui/widget/DatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/os/Parcel;)Lmiui/widget/DatePicker$SavedState;
    .locals 2

    .prologue
    .line 785
    new-instance v0, Lmiui/widget/DatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;Lmiui/widget/DatePicker$1;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker$SavedState$1;->af(I)[Lmiui/widget/DatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
