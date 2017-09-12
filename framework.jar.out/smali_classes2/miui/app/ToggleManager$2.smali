.class Lmiui/app/ToggleManager$2;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 951
    iput-object p1, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 954
    iget-object v2, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$300(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 955
    iget-object v2, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$300(Lmiui/app/ToggleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 956
    .local v1, "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    invoke-interface {v1}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_0

    .line 959
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    :cond_0
    return-void
.end method
