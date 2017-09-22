.class Lcom/android/settings/dndmode/s;
.super Landroid/database/ContentObserver;
.source "QuietActivity.java"


# instance fields
.field final synthetic aaO:Lcom/android/settings/dndmode/r;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/r;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/dndmode/s;->aaO:Lcom/android/settings/dndmode/r;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/dndmode/s;->aaO:Lcom/android/settings/dndmode/r;

    invoke-static {v0}, Lcom/android/settings/dndmode/r;->a(Lcom/android/settings/dndmode/r;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/settings/dndmode/s;->aaO:Lcom/android/settings/dndmode/r;

    invoke-static {v1, v0}, Lcom/android/settings/dndmode/r;->a(Lcom/android/settings/dndmode/r;I)V

    .line 48
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 49
    return-void
.end method
