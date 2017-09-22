.class public Lmiui/view/menu/ContextMenuDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/menu/ContextMenuDialog$a;
    }
.end annotation


# instance fields
.field private final Mq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Lmiui/view/menu/ContextMenuDialog$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mq:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lmiui/view/menu/ContextMenuDialog$a;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/view/menu/ContextMenuDialog$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    .line 31
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    new-instance v1, Lmiui/view/menu/ContextMenuDialog$1;

    invoke-direct {v1, p0}, Lmiui/view/menu/ContextMenuDialog$1;-><init>(Lmiui/view/menu/ContextMenuDialog;)V

    invoke-virtual {v0, v1}, Lmiui/view/menu/ContextMenuDialog$a;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mq:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->Mq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, p1}, Lmiui/view/menu/ContextMenuDialog$a;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 65
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mq:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->Z(I)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 61
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->f(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->Y(I)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->b(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 49
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->Mr:Lmiui/view/menu/ContextMenuDialog$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/menu/ContextMenuDialog$a;->a(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 74
    return-void
.end method
