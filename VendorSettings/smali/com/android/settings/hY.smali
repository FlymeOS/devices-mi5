.class Lcom/android/vendorsettings/hY;
.super Ljava/lang/Object;
.source "ToggleArrangementFragment.java"

# interfaces
.implements Lmiui/app/ToggleManager$OnToggleChangedListener;


# instance fields
.field final synthetic Be:Lcom/android/vendorsettings/ToggleArrangementFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ToggleArrangementFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/vendorsettings/hY;->Be:Lcom/android/vendorsettings/ToggleArrangementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/hY;->Be:Lcom/android/vendorsettings/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ToggleArrangementFragment;->a(Lcom/android/vendorsettings/ToggleArrangementFragment;)Lcom/android/vendorsettings/hZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/hZ;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
