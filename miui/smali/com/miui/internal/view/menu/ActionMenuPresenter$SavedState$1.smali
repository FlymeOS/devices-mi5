.class final Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
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
        "Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;->b(Landroid/os/Parcel;)Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public i(I)[Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    .locals 1

    .prologue
    .line 466
    new-array v0, p1, [Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;->i(I)[Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object v0

    return-object v0
.end method
