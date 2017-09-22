.class Lcom/android/vendorsettings/wifi/aZ;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEZ:Lcom/android/vendorsettings/wifi/aY;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/aY;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aZ;->aEZ:Lcom/android/vendorsettings/wifi/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aZ;->aEZ:Lcom/android/vendorsettings/wifi/aY;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/aY;->aEY:Lcom/android/vendorsettings/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsFragment;->b(Lcom/android/vendorsettings/wifi/WpsFragment;)Lmiui/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->incrementProgressBy(I)V

    .line 193
    return-void
.end method
