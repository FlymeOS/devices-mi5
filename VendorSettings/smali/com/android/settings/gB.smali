.class Lcom/android/vendorsettings/gB;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/vendorsettings/gB;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1104
    iget-object v3, p0, Lcom/android/vendorsettings/gB;->xZ:Lcom/android/vendorsettings/RadioInfo;

    const-string v4, "toggle %s: currently %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "persist.radio.imsallowmtsms"

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/android/vendorsettings/gB;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->I(Lcom/android/vendorsettings/RadioInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/vendorsettings/RadioInfo;->a(Lcom/android/vendorsettings/RadioInfo;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/vendorsettings/gB;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->I(Lcom/android/vendorsettings/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1107
    :goto_1
    const-string v1, "persist.radio.imsallowmtsms"

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/android/vendorsettings/gB;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->J(Lcom/android/vendorsettings/RadioInfo;)V

    .line 1109
    return-void

    .line 1104
    :cond_0
    const-string v0, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1106
    goto :goto_1

    .line 1107
    :cond_2
    const-string v0, "0"

    goto :goto_2
.end method
