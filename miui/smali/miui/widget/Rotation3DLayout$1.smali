.class Lmiui/widget/Rotation3DLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WC:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$1;->WC:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->WC:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 159
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->WC:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->WC:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 149
    return-void
.end method
