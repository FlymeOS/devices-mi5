.class Lcom/android/camera/ui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;II)V
    .locals 2
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "glTextureViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/camera/ui/GLTextureView;>;"
    const/4 v1, 0x1

    .line 1007
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1539
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1008
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 1009
    iput p3, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 1010
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1011
    iput v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 1012
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1013
    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/GLTextureView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 996
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v19, Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    .line 1055
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1056
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1058
    const/4 v8, 0x0

    .line 1059
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1060
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1061
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1062
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1063
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1064
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1065
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1066
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1067
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1068
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1069
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1072
    .local v7, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1074
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1075
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1342
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1343
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1345
    monitor-exit v20

    return-void

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1078
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1243
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1245
    if-eqz v7, :cond_14

    .line 1246
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1247
    const/4 v7, 0x0

    .line 1248
    goto :goto_0

    .line 1084
    :cond_2
    const/4 v11, 0x0

    .line 1085
    .local v11, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1086
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1087
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    .line 1088
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1095
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1101
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1102
    const/4 v2, 0x1

    .line 1106
    :cond_4
    if-eqz v10, :cond_5

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1109
    const/4 v10, 0x0

    .line 1113
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1117
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1121
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    .line 1123
    .local v16, "view":Lcom/android/camera/ui/GLTextureView;
    if-nez v16, :cond_11

    const/4 v12, 0x0

    .line 1125
    .local v12, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v12, :cond_7

    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1126
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1134
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_8
    if-eqz v11, :cond_9

    .line 1135
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    .line 1144
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 1148
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1151
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1152
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1153
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1157
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1161
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1162
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    :cond_c
    if-eqz v6, :cond_d

    .line 1169
    const/16 v18, 0x0

    .line 1170
    const/4 v6, 0x0

    .line 1171
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1172
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1176
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1180
    if-eqz v2, :cond_12

    .line 1181
    const/4 v2, 0x0

    .line 1196
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1197
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1198
    const/4 v4, 0x1

    .line 1199
    const/4 v5, 0x1

    .line 1200
    const/4 v13, 0x1

    .line 1203
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1205
    const/4 v13, 0x1

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1207
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 1208
    const/16 v18, 0x1

    .line 1216
    const/4 v4, 0x1

    .line 1218
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1220
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1221
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1243
    .end local v11    # "pausing":Z
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1342
    :catchall_2
    move-exception v19

    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1343
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1345
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v19

    .line 1123
    .restart local v11    # "pausing":Z
    .restart local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_11
    :try_start_8
    # getter for: Lcom/android/camera/ui/GLTextureView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->access$1000(Lcom/android/camera/ui/GLTextureView;)Z

    move-result v12

    goto/16 :goto_3

    .line 1182
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_12
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1184
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1189
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1190
    const/4 v3, 0x1

    .line 1192
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1185
    :catch_0
    move-exception v15

    .line 1186
    .local v15, "t":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    .line 1187
    throw v15

    .line 1241
    .end local v15    # "t":Ljava/lang/RuntimeException;
    :cond_13
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1251
    .end local v11    # "pausing":Z
    :cond_14
    if-eqz v4, :cond_15

    .line 1255
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1256
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1257
    const/16 v19, 0x1

    :try_start_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1258
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1259
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1268
    const/4 v4, 0x0

    .line 1271
    :cond_15
    if-eqz v5, :cond_16

    .line 1272
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1274
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1275
    const/4 v5, 0x0

    .line 1278
    :cond_16
    if-eqz v3, :cond_18

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    .line 1283
    .restart local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v16, :cond_17

    .line 1284
    # getter for: Lcom/android/camera/ui/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1286
    :cond_17
    const/4 v3, 0x0

    .line 1289
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_18
    if-eqz v13, :cond_1a

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    .line 1294
    .restart local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v16, :cond_19

    .line 1295
    # getter for: Lcom/android/camera/ui/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1297
    :cond_19
    const/4 v13, 0x0

    .line 1304
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    .line 1305
    .restart local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v16, :cond_1b

    .line 1306
    # getter for: Lcom/android/camera/ui/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1309
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->swap()I

    move-result v14

    .line 1310
    .local v14, "swapError":I
    sparse-switch v14, :sswitch_data_0

    .line 1324
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1326
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1327
    const/16 v19, 0x1

    :try_start_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1328
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1329
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1333
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1334
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1259
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :catchall_3
    move-exception v19

    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v19

    .line 1261
    :cond_1c
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1262
    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1263
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1264
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    monitor-exit v20

    goto/16 :goto_0

    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1317
    .restart local v14    # "swapError":I
    .restart local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :sswitch_1
    const/4 v10, 0x1

    .line 1318
    goto :goto_5

    .line 1329
    :catchall_5
    move-exception v19

    :try_start_13
    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1345
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/android/camera/ui/GLTextureView;
    :catchall_6
    move-exception v19

    :try_start_15
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v19

    .line 1310
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1354
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1050
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    .line 1052
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1038
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurface()V

    .line 1040
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1370
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1371
    :try_start_0
    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1420
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1424
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1425
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1431
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1436
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1437
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1440
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1444
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1447
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1448
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1453
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1458
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1459
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1462
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1463
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 1464
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 1465
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1468
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1472
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1482
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1483
    return-void
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1488
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1489
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    .line 1490
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1493
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1498
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1499
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1503
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1376
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1377
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1378
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1379
    monitor-exit v1

    .line 1380
    return-void

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 1023
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    .line 1029
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1027
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1360
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1361
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1364
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 1365
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1366
    monitor-exit v1

    .line 1367
    return-void

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1383
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1387
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    .line 1388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1389
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1394
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1399
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1400
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1403
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1407
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    .line 1408
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1409
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1411
    :try_start_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->sGLThreadManager:Lcom/android/camera/ui/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1416
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1417
    return-void
.end method
